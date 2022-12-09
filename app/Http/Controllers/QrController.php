<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Beneficiary;
use ArPHP\I18N\Arabic;
use Elibyy\TCPDF\TCPDF;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class QrController extends Controller
{
    public function index($id = null)
    {
        $beneficiary = Beneficiary::FindOrFail($id);
        $date_of_birth = $beneficiary->date_of_birth;
        $Arabic = new Arabic();
        $date_of_birth_hijri = $Arabic->date('Y-m-d', strtotime($date_of_birth));
        return view('site.membership',compact('beneficiary','date_of_birth_hijri'));
    }
    public function DownloadPdf($id)
    {
        $beneficiary = Beneficiary::findOrFail($id);
        $beneficiary_id = $beneficiary->id;
        $name_ar = $beneficiary->first_name_ar . " " . $beneficiary->second_name_ar . " " . $beneficiary->third_name_ar . " " . $beneficiary->fourth_name_ar . " ";
        $name_en = ucfirst($beneficiary->first_name_en) . " " . ucfirst($beneficiary->second_name_en) . " " . ucfirst($beneficiary->third_name_en) . " " . ucfirst($beneficiary->fourth_name_en) . " ";
        $record = $beneficiary->record;
        $pdf = new TCPDF(PDF_PAGE_ORIENTATION, PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);
        $lg = array();
        $lg['a_meta_charset'] = 'UTF-8';
        $lg['a_meta_dir'] = 'rtl';
        $lg['a_meta_language'] = 'fa';
        $lg['w_page'] = 'page';
        $pdf->setLanguageArray($lg);
        $pdf->AddPage();
        $pdf->setPageOrientation('L');
        $bMargin = $pdf->getBreakMargin();
        $auto_page_break = $pdf->getAutoPageBreak();
        $pdf->SetAutoPageBreak(false, 0);
        $pdf->setRTL(true);
        $pdf->SetFont('almohanad', '', 28);
        $pdf->SetTextColor(126, 175, 93);
        $pdf->Image('img/front.png', 2, 2, '293', '205', '', '', '', false, 300, '', false, false, 0);

        $pdf->setRTL(false);
        $pdf->SetXY(0, 70);

        $name_ar = '<div style="margin-top: 200px!important;text-align:center!important;justify-content: center!important; align-items: center!important;">'.$name_ar.'</div>';
        $pdf->writeHTML($name_ar, true, 0, true, true);
        $pdf->SetXY(0, 80);

        $name_en = '<div style="margin-top: 110px!important;text-align:center!important;justify-content: center!important; align-items: center!important;">'.$name_en.'</div>';
        $pdf->writeHTML($name_en, true, 0, true, true);

        $pdf->setRTL(true);

        $pdf->SetFont('almohanad', '', 38);
        $pdf->writeHTMLCell(0, 0, 90, 107, $record, 0, 1, 0, true, 'D', true);
        $pdf->SetFont('almohanad', '', 28);
        $membership = $beneficiary->membershipType->membership_type;
        $date_of_birth = $beneficiary->date_of_birth;
        $Arabic = new Arabic();
        $date_of_birth_hijri = $Arabic->date('Y-m-d', strtotime($date_of_birth));

        $pdf->writeHTMLCell(0, 0, 230, 107, $membership, 0, 1, 0, true, 'D', true);
        $pdf->SetFont('almohanad', '', 38);

        $pdf->writeHTMLCell(0, 0, 90, 122, $date_of_birth, 0, 1, 0, true, 'D', true);
        $pdf->writeHTMLCell(0, 0, 90, 140, $date_of_birth_hijri, 0, 1, 0, true, 'D', true);

        $pdf->writeHTMLCell(0, 0, 230, 122, $beneficiary->id, 0, 1, 0, true, 'D', true);
        $pdf->writeHTMLCell(0, 0, 230, 140, $beneficiary->start_date, 0, 1, 0, true, 'D', true);

        $pdf->SetTextColor(255, 0, 0);

        $pdf->writeHTMLCell(0, 0, 155, 168, $beneficiary->end_date, 0, 1, 0, true, 'D', true);

        $pdf->setLanguageArray($lg);
        $pdf->AddPage();
        $pdf->setPageOrientation('L');
        $bMargin = $pdf->getBreakMargin();
        $auto_page_break = $pdf->getAutoPageBreak();
        $pdf->SetAutoPageBreak(false, 0);
        $pdf->setRTL(true);
        $pdf->SetFont('almohanad', '', 28);
        $pdf->SetTextColor(126, 175, 93);
        $pdf->Image('img/back.png', 2, 2, '293', '205', '', '', '', false, 300, '', false, false, 0);

        $pdf->write2DBarcode(route('membership',$beneficiary->id), 'QRCODE,H', 270, 90, 77, 77, null,'R', 'T');

        $pdf->SetAutoPageBreak($auto_page_break, $bMargin);
        $pdf->setPageMark();
        $full_path = public_path('uploads/beneficiaries/cards/') . 'CARD_' . $beneficiary_id . '.pdf';
        $pdf->Output($full_path, 'F');
        $pdf->Output('Beneficiary.pdf');
        exit();
    }

}
