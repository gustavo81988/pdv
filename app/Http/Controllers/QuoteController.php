<?php

namespace App\Http\Controllers;
use App\Quote;
use App\Pdv;
use Illuminate\Http\Request;

class QuoteController extends Controller{
    public function postQuote(Request $request){
        $quote = new Pdv();
        $quote->content = $request->input('content');
        $quote->save();
        return response()->json( ['quote' => $quote], 201 );
    }

    public function getQuote(){
        $ingredients = Pdv::all();
        return response()->json($ingredients, 200);
    }

    public function putQuote(Request $request, $id){
    }

    public function deleteQuote($id){

    }
}
