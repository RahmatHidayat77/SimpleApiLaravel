<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Controllers\Api\BaseController as BaseController;
use App\Banner;
use App\Kategori;
use App\Produk;

class Data1Controller extends BaseController
{
    public function __construct()
    {
      $this->middleware('auth:api');
    }

    public function listProduk()
    {
        $products = Produk::jsonPaginate();


        return $this->sendResponse($products->toArray(), 'Products retrieved successfully.');
    }

    public function listBanner()
    {
        $banners = Banner::all();

        return $this->sendResponse($banners->toArray(), 'Banners retrieved successfully.');     
    }

    public function listKategori()
    {
        $categories = Kategori::all();

        return $this->sendResponse($categories->toArray(), 'Categories retrieved successfully.');     
    }

    public function searchProduk($search)
    {
        $product = Produk::where('nama', 'LIKE', "%$search%")->jsonPaginate();
        // dd($product->items());
        if(empty($product->items())){
            return $this->sendError('Product not found.');
        }
        return $this->sendResponse($product->toArray(), 'Search Products retrieved successfully.');
    }

    public function filterProduk($filter)
    {
        if ($filter == "halal") {
            $product = Produk::where('halal', '=', true)->jsonPaginate();
        }elseif($filter == "under 30k") {
            $product = Produk::where('harga', '<', 30000)->jsonPaginate();
        }elseif($filter == "under 20k") {
            $product = Produk::where('harga', '<', 20000)->jsonPaginate();
        }elseif($filter == "makanan") {
            $product = Produk::where('jenis', '=', 1)->jsonPaginate();
        }elseif($filter == "minuman") {
            $product = Produk::where('jenis', '=', 2)->jsonPaginate();
        }else{
            return $this->sendError('Filter not identified.');
        }

        if(empty($product->items())){
            return $this->sendResponse($product->toArray(), 'Product is empty.');
        }

        return $this->sendResponse($product->toArray(), 'Filter Products retrieved successfully.');

    }
}
