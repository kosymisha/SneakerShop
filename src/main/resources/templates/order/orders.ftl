
<#import "../parts/login.ftl" as l>
<#import "../parts/common.ftl" as c>
<@c.page "Orders">
<script src="/js/cart.js" type="text/javascript" xmlns="http://www.w3.org/1999/html"></script>
<link rel="stylesheet" type="text/css"  href="/css/orders.css" media="all">
<nav>
    <div class="nav nav-tabs" id="nav-tab">
        <a class="nav-item nav-link active" id="nav-currOrders-tab" data-toggle="tab" href="#nav-currOrders" role="tab" aria-controls="nav-currOrders" aria-selected="true">Current orders</a>
        <a class="nav-item nav-link" id="nav-allOrders-tab" data-toggle="tab" href="#nav-allOrders" role="tab" aria-controls="nav-allOrders" aria-selected="false">All orders</a>
    </div>
</nav>
<div class="tab-content" id="nav-tabContent m-1">
    <div class="tab-pane fade show active m-2" id="nav-currOrders" role="tabpanel" aria-labelledby="nav-currOrders-tab">
        <table class="table">
            <thead>
            <tr>
                <th scope="col">ID order</th>
                <th scope="col">Photo</th>
                <th scope="col" width="300">Title</th>
                <th scope="col">Price</th>
                <th></th>
                <th></th>
            </tr>
            </thead>
            <tbody><#list orders as order>
            <tr class="rows">
                <td scope="row">${order.id}</td>
                <td><img height="100" src="${order.advert.product.photoURL}" /></td>
                <td>${order.advert.product.title}</td>
                <td>${order.advert.price} ${order.advert.currency}</td>
                <td><form action="/orders/${order.id}/confirm" method="get">
                    <button class="btn btn-warning" type="submit" >CONFIRM</button>
                </form></td>
                <td><button class="btn btn-danger" onclick="deleteFromCart('${order.id}', this)">DELETE</button></td>
            </tr>
            </#list>
            </tbody>
        </table>
    </div>
    <div class="tab-pane fade show m-2" id="nav-allOrders" role="tabpanel" aria-labelledby="nav-allOrders-tab">
        <div id="table-wrapper">
            <div id="table-scroll">
                <table class="table">
                    <thead>
                    <tr>
                        <th scope="col">ID order</th>
                        <th scope="col">Photo</th>
                        <th scope="col" width="300">Title</th>
                        <th scope="col">Price</th>
                        <th></th>
                        <th></th>
                    </tr>
                    </thead>
                    <tbody>
                        <#list paidOrders as order>
                        <tr class="rows">
                            <td scope="row">${order.id}</td>
                            <td><img height="100" src="${order.advert.product.photoURL}" /></td>
                            <td>${order.advert.product.title}</td>
                            <td>
                                ${order.advert.price} ${order.advert.currency}
                            </td>
                        </tr>
                        </#list>
                    </tbody>
                </table>
            </div>
        </div>
        <p>${itemCount} item(s). Total price: <b>${totalUsd.price}</b><sup>${totalUsd.currency}</sup> <b id="currencyHelp">${totalEur.price}</b><sup id="currencyHelp">${totalEur.currency}</sup> <b id="currencyHelp">${totalByn.price}</b><sup id="currencyHelp">${totalByn.currency}</sup></p>
    </div>
</div>
</@c.page>