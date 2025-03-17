
function fetchAndExportToExcel(apiUrl, newKeys,fileName) {
    // Fetch data from the API
    fetch(apiUrl)
        .then(response => response.json())
        .then(data => {
            // Function to rename keys
            const renameKeys = (obj, newKeys) => {
                const keyValues = Object.keys(obj).map(key => {
                    const newKey = newKeys[key] || key;
                    return { [newKey]: obj[key] };
                });
                return Object.assign({}, ...keyValues);
            };

            // Rename keys for each object
            const renamedData = data.map(obj => renameKeys(obj, newKeys));

            // Create a new workbook and worksheet
            const workbook = new ExcelJS.Workbook();
            const worksheet = workbook.addWorksheet('Sheet1');

            // Add header row
            worksheet.columns = Object.keys(newKeys).map(key => ({ header: newKeys[key], key: newKeys[key], width: 15 }));

            // Add rows
            renamedData.forEach(item => worksheet.addRow(item));

            // Export the Excel file
            workbook.xlsx.writeBuffer().then(buffer => {
                const blob = new Blob([buffer], { type: 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet' });
                const link = document.createElement('a');
                link.href = URL.createObjectURL(blob);
                link.download = fileName+' data.xlsx';
                link.click();
            });
        })
        .catch(error => {
            console.error('Error fetching data:', error);
        });
}