<%@ page title="" language="C#" masterpagefile="~/Visitors/Visitor.master" autoeventwireup="true" inherits="Visitors_CompanyLocationMap, App_Web_aydit35v" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>
<script type ="text/javascript">
    var map;
    function initialize() {
        var latlng = new google.maps.LatLng(-34.397, 150.644);
        var myOptions = {
            zoom: 8,
            center: latlng,
            mapTypeId: google.maps.MapTypeId.ROADMAP
        };
        map = new google.maps.Map(document.getElementById("map"), myOptions);
        var marker = new google.maps.Marker
        (
            {
                position: new google.maps.LatLng(-34.397, 150.644),
                map: map,
                title: 'Click me'
            }
        );
        var infowindow = new google.maps.InfoWindow({
            content: 'Location info:<br/>Country Name:India:<br/>State Name:Gujarat<br/>City Name:Ahmedabad.'
        });
        google.maps.event.addListener(marker, 'click', function () {
            // Calling the open method of the infoWindow 
            infowindow.open(map, marker);
        });
    }
    window.onload = initialize;
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="height:400px;width:896px;">
        <table>
            <tr>
                <td>
                    <div id ="map" style="height: 322px; width: 353px; top: 60px; left: 126px; position: absolute;"></div>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
