$(document).ready(function() {
	$('#toggleSidebar').click(function() {
		$('#sidebar').toggleClass('collapsed');
		$('#content').toggleClass('expanded');
	});
    
	if($('#usersTable').length > 0){
		// $('#usersTable').DataTable({
		// 	responsive: {
		// 					details: {
		// 						display: $.fn.dataTable.Responsive.display.modal({
		// 							header: function (row) {
		// 								var data = row.data();
		// 								return 'Details for ' + data[1] + ' ' + data[2];
		// 							}
		// 						}),
		// 						renderer: $.fn.dataTable.Responsive.renderer.tableAll({
		// 							tableClass: 'table'
		// 						})
		// 					}
		// 				}
		// });
		
		$('#usersTable').DataTable({
			responsive: true,
    		scrollX: true,
    		autoWidth: false
		});
	}
});

