var FTNO = (function() {
    function browseObject(obj) {
        let output = '<ul>';
        for (const property in obj) {
            const value = obj[property];
            output += '<li>';
            output += `<strong>${property}</strong>:`;
            if (Array.isArray(value)) {
                output += browseArray(value);
            } else if (isObject(value)) {
                output += browseObject(value);
            } else {
                output += ` ${value}`;
            }
            output += '</li>';
        }
        output += '</ul>';
        return output;
    }

    function browseArray(arr) {
        let output = '<ul>';
        for (let i = 0; i < arr.length; i++) {
            const value = arr[i];
            if (isObject(value)) {
                output += '<li>';
                output += browseObject(value);
                output += '</li>';
            } else {
                output += `<li>${value}</li>`;
            }
        }
        output += '</ul>';
        return output;
    }

    function isObject(value) {
        return typeof value === 'object' && value !== null;
    }

    return {
        browseObject,
        browseArray,
        isObject
    };
})();
