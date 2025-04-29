//
//  File.swift
//  KCLibrarySwift
//
//  Created by Luis Escamez Sanchez on 29/4/25.
//

import Foundation
import KeychainAccess

@discardableResult func saveKC(key: String, value: String) -> Bool {
    let keychain = Keychain(service: Constants.myKeychain) //Creamos el llavero de login
    keychain[key] = value //Obtenemos el token del llavero del login
    if let _ = keychain[key] {
        return true
    } else {
        return false
    }
}

func loadKC(key: String) -> String? {
    let keychain = Keychain(service: Constants.myKeychain) //Cargamos el llavero de login
    if let value = keychain[key] { //Cargamos el token del llavero del login
        return value
    } else {
        return ""
    }
}

func deleteKC(key: String) {
    let keychain = Keychain(service: Constants.myKeychain)
    keychain[key] = nil
}

//SEMANTIC VERSIONING

//1.0.0

//MAJOR: Tiene que cambiar al menos el 80% del codigo fuente
//MINOR: Cualquier cambio remarcable
//PATCH: Correccion de errores
