import Kitura
import HeliumLogger

// Initialize HeliumLogger
HeliumLogger.use()

let router = Router()
router.get("/app"){ request, response, next in
    response.send("Hello, World!")
    next()
}
Kitura.addHTTPServer(onPort: 8090, with: router)
Kitura.run()
