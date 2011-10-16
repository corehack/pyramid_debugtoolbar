% if records:
	<table>
		<thead>
			<tr>
				<th>Level</th>
				<th>Time</th>
				<th>Message</th>
				<th>Location</th>
			</tr>
		</thead>
		<tbody>
			% for i, record in enumerate(records):
				<tr class="${i%2 and 'pDebugEven' or 'pDebugOdd'}">
					<td>${record['level']}</td>
					<td>${record['time']}</td>
					<td>${record['message']}</td>
					<td title="${record['file_long']}:${record['line']}">${record['file']}:${record['line']}</td>
				</tr>
			% endfor
		</tbody>
	</table>
% else:
	<p>No messages logged.</p>
% endif


