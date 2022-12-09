<?php
namespace App\Http\Controllers\Supervisor;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Blade;
use Imagick;

class ImageController extends Controller
{
    public function index()
    {
        $imgExt = new Imagick();
        $imgExt->readImage(public_path('pdf-document.pdf'));
        $imgExt->writeImages('pdf_image_doc.jpg', true);
        dd("Document has been converted");
    }
}
