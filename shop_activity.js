const https = require('https')

let activityList = [
    'https://api.m.jd.com/client.action?functionId=drawShopGift&body=%7B%22follow%22%3A%200%2C%20%22shopId%22%3A%20%221000090734%22%2C%20%22activityId%22%3A%20%2210339283%22%2C%20%22sourceRpc%22%3A%20%22shop_app_home_window%22%2C%20%22venderId%22%3A%20%221000090734%22%7D&uuid=hjudwgohxzVu96krv&client=apple&clientVersion=9.4.0&st=1620708794000&sv=120&sign=55c99ca670ebd511dcf5fe6f5a5644fc',
    'https://api.m.jd.com/client.action?functionId=drawShopGift&body=%7B%22follow%22%3A%200%2C%20%22shopId%22%3A%20%2210069906%22%2C%20%22activityId%22%3A%20%2210340685%22%2C%20%22sourceRpc%22%3A%20%22shop_app_home_window%22%2C%20%22venderId%22%3A%20%2210206104%22%7D&uuid=hjudwgohxzVu96krv&client=apple&clientVersion=9.4.0&st=1620714258000&sv=120&sign=4a24ed6f76bcbf33702de7dc09248494',
    'https://api.m.jd.com/client.action?functionId=drawShopGift&body=%7B%22follow%22%3A%200%2C%20%22shopId%22%3A%20%22181452%22%2C%20%22activityId%22%3A%20%2210357808%22%2C%20%22sourceRpc%22%3A%20%22shop_app_home_window%22%2C%20%22venderId%22%3A%20%22188807%22%7D&uuid=hjudwgohxzVu96krv&client=apple&clientVersion=9.4.0&st=1620708535000&sv=120&sign=4f87914d88df5fa3425caceda5d45466',
    'https://api.m.jd.com/client.action?functionId=drawShopGift&body=%7B%22follow%22%3A%200%2C%20%22shopId%22%3A%20%22181390%22%2C%20%22activityId%22%3A%20%2210347777%22%2C%20%22sourceRpc%22%3A%20%22shop_app_home_window%22%2C%20%22venderId%22%3A%20%22188883%22%7D&uuid=hjudwgohxzVu96krv&client=apple&clientVersion=9.4.0&st=1620708541000&sv=111&sign=9e2c463d5016e8eedb585906fef57ae2',
    'https://api.m.jd.com/client.action?functionId=drawShopGift&body=%7B%22follow%22%3A%200%2C%20%22shopId%22%3A%20%221000094782%22%2C%20%22activityId%22%3A%20%2210355416%22%2C%20%22sourceRpc%22%3A%20%22shop_app_home_window%22%2C%20%22venderId%22%3A%20%221000094782%22%7D&uuid=hjudwgohxzVu96krv&client=apple&clientVersion=9.4.0&st=1620708556000&sv=111&sign=4aa574df6b00d333f9fffd646adad538',
    'https://api.m.jd.com/client.action?functionId=drawShopGift&body=%7B%22follow%22%3A%200%2C%20%22shopId%22%3A%20%2210247849%22%2C%20%22activityId%22%3A%20%2210322133%22%2C%20%22sourceRpc%22%3A%20%22shop_app_home_window%22%2C%20%22venderId%22%3A%20%2210392936%22%7D&uuid=hjudwgohxzVu96krv&client=apple&clientVersion=9.4.0&st=1620708558000&sv=111&sign=3a60bd4f48e08ddfc01d27d65d2942c0',
];

let cookieArr = [
   
];

activityList.forEach(url => {
    cookieArr.forEach(cookie => {
        doTask(url,cookie)
    });
});

doTask(activityList[0], cookieArr[0]);


function doTask(url, cookie)
{
    const options = {
        hostname: "api.m.jd.com",
        port: 443,
        path: url,
        method: 'GET',
        headers: {
            Cookie: cookie
        }
    }

    const req = https.request(options, res => {
        console.log(`状态码: ${res.statusCode}`)

        res.on('data', d => {
            process.stdout.write(d)
        })
    })

    req.on('error', error => {
        console.error(error)
    })

    req.end()
}
