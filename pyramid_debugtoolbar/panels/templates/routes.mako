<table>
	<thead>
		<tr>
			<th>Route Name</th>
			<th>Route Pattern</th>
			<th>View Callable</th>
			<th>Predicates</th>
		</tr>
	</thead>
	<tbody>
		% for i, route_info in enumerate(routes):
			<tr class="${i%2 and 'pDebugEven' or 'pDebugOdd'}">
				<td>${route_info['route'].name|h}</td>
				<td>${route_info['route'].pattern|h}</td>
				<td>${route_info['view_callable']}</td>
				<td>${route_info['predicates']}</td>
			</tr>
		% endfor
	</tbody>
</table>
