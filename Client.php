<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;


class Client extends Model
{
    use SoftDeletes;
    protected $fillable = [
        'rut', 'nombre', 'razon_social', 'giro', 'condicion_pago', 'direccion', 'region',  'ciudad',  'comuna',  'telefono',  'contacto',  'celular', 'correo', 'id_cargo',  'tipo_cliente', 'codigo', 'cod_area', 'linea_credito', 'vendedor', 'staff', 'id_zona', 'dias','telefono_fijo','anexo','cargo','id_client_status',
    ];

    /**
     * The attributes excluded from the model's JSON form.
     *
     * @var array
     */
    protected $dates = ['deleted_at'];
    protected $table = 'clients';
    public $timestamps = true;

    public function paymentconditions()
    {
        return $this->belongsTo('App\PaymentConditions', 'condicion_pago');
    }

    public function regiones()
    {
        return $this->belongsTo('App\Region', 'region');
    }

    public function ciudades()
    {
        return $this->belongsTo('App\Ciudad', 'ciudad');
    }

    public function comunas()
    {
        return $this->belongsTo('App\Comuna', 'comuna');
    }

    public function workposition()
    {
        return $this->belongsTo('App\WorkPosition', 'id_cargo');
    }

    public function clienttype()
    {
        return $this->belongsTo('App\ClientType', 'tipo_cliente');
    }

    public function getvendedor()
    {
        return $this->belongsTo('App\User', 'vendedor');
    }

    public function getstaff()
    {
        return $this->belongsTo('App\User', 'staff');
    }

    public function getzona()
    {
        return $this->belongsTo('App\Zone', 'id_zona');
    }

    public function city()
    {
        return $this->belongsTo('App\City', 'ciudad');
    }

    public function comune()
    {
        return $this->belongsTo('App\Comune', 'comuna');
    }

    public function plazo()
    {
        return $this->belongsTo('App\Term', 'dias');
    }



    public function lineaCredito()
    {
        return $this->belongsTo('App\CreditLine', 'linea_credito');
    }

    public function ClientStatus()
    {
        return $this->belongsTo('App\StatusClient','id_client_status');
    }
}
