<?php


namespace App\Utilities;


class Cart
{
    public $items = null;
    public $totalQty = 0;
    public $totalPrice = 0;

    public function __construct($oldCart)
    {
        if ($oldCart) {
            $this->items = $oldCart->items;
            $this->totalQty = $oldCart->totalQty;
            $this->totalPrice = $oldCart->totalPrice;
        }
    }

    public function add($item, $id)
    {
        $storedItem = ['qty' => 0, 'price' => $item->price, 'item' => $item, 'total' => 0];
        if ($this->items) {
            if (array_key_exists($id, $this->items)) {
                $storedItem = $this->items[$id];
            }
        }
        $storedItem['qty']++;
        $this->items[$id] = $storedItem;
        $this->items[$id]['total'] = $storedItem['price'] * $storedItem['qty'];
        $this->totalQty++;
        $this->totalPrice += $item->price;
    }

    public function remove($id)
    {
        if ($this->items) {
            if (array_key_exists($id, $this->items)) {
                $storedItem = $this->items[$id];
                unset($this->items[$id]);
            }
        }
        $this->totalQty = $this->totalQty - $storedItem['qty'];
        $this->totalPrice = $this->totalPrice - ($storedItem['price'] * $storedItem['qty']);

    }
}
