(module
  (type $t0 (func (result i32)))
  (type $t1 (func (param i32 i32 i32) (result i32)))
  (type $t2 (func (param i32) (result i32)))
  (type $t3 (func (param i32)))
  (type $t4 (func))
  (type $t5 (func (param i32 i32) (result i32)))
  (type $t6 (func (param i32 i64 i32) (result i64)))
  (type $t7 (func (param i32 i32 i32)))
  (type $t8 (func (param i32 i32 i32 i32 i32) (result i32)))
  (type $t9 (func (param i32 f64 i32 i32 i32 i32) (result i32)))
  (type $t10 (func (param i32 i32)))
  (type $t11 (func (param i64 i32) (result i32)))
  (type $t12 (func (param i32 i64 i64 i32)))
  (type $t13 (func (param i32 i32 i32 i32) (result i32)))
  (type $t14 (func (param f64 i32) (result f64)))
  (type $t15 (func (param i32 i32 i32 i32 i32 i32 i32) (result i32)))
  (type $t16 (func (param i32 i32 i32 i32)))
  (type $t17 (func (param i64 i32 i32) (result i32)))
  (type $t18 (func (param i32 i32 i32 i32 i32)))
  (type $t19 (func (param f64) (result i64)))
  (type $t20 (func (param i64 i64) (result f64)))
  (type $t21 (func (param i32 i32 i64 i32) (result i64)))
  (import "wasi_snapshot_preview1" "fd_write" (func $wasi_snapshot_preview1.fd_write (type $t13)))
  (import "env" "_emscripten_memcpy_js" (func $env._emscripten_memcpy_js (type $t7)))
  (func $__wasm_call_ctors (export "__wasm_call_ctors") (type $t4)
    (call $emscripten_stack_init)
    (call $f40))
  (func $f3 (type $t0) (result i32)
    (local $l0 i32) (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32)
    (local.set $l0
      (global.get $g0))
    (local.set $l1
      (i32.const 16))
    (local.set $l2
      (i32.sub
        (local.get $l0)
        (local.get $l1)))
    (global.set $g0
      (local.get $l2))
    (local.set $l3
      (i32.const 0))
    (i32.store offset=12
      (local.get $l2)
      (local.get $l3))
    (local.set $l4
      (i32.const 65590))
    (local.set $l5
      (i32.const 0))
    (drop
      (call $f5
        (local.get $l4)
        (local.get $l5)))
    (local.set $l6
      (i32.const 0))
    (local.set $l7
      (i32.const 16))
    (local.set $l8
      (i32.add
        (local.get $l2)
        (local.get $l7)))
    (global.set $g0
      (local.get $l8))
    (return
      (local.get $l6)))
  (func $main (export "main") (type $t5) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32)
    (local.set $l2
      (call $f3))
    (return
      (local.get $l2)))
  (func $f5 (type $t5) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32)
    (global.set $g0
      (local.tee $l2
        (i32.sub
          (global.get $g0)
          (i32.const 16))))
    (i32.store offset=12
      (local.get $l2)
      (local.get $p1))
    (local.set $p1
      (call $f32
        (i32.const 66096)
        (local.get $p0)
        (local.get $p1)))
    (global.set $g0
      (i32.add
        (local.get $l2)
        (i32.const 16)))
    (local.get $p1))
  (func $f6 (type $t1) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32)
    (global.set $g0
      (local.tee $l3
        (i32.sub
          (global.get $g0)
          (i32.const 32))))
    (i32.store offset=16
      (local.get $l3)
      (local.tee $l4
        (i32.load offset=28
          (local.get $p0))))
    (local.set $l5
      (i32.load offset=20
        (local.get $p0)))
    (i32.store offset=28
      (local.get $l3)
      (local.get $p2))
    (i32.store offset=24
      (local.get $l3)
      (local.get $p1))
    (i32.store offset=20
      (local.get $l3)
      (local.tee $p1
        (i32.sub
          (local.get $l5)
          (local.get $l4))))
    (local.set $l6
      (i32.add
        (local.get $p1)
        (local.get $p2)))
    (local.set $l4
      (i32.add
        (local.get $l3)
        (i32.const 16)))
    (local.set $l7
      (i32.const 2))
    (block $B0
      (block $B1
        (block $B2
          (block $B3
            (block $B4
              (br_if $B4
                (i32.eqz
                  (call $f36
                    (call $wasi_snapshot_preview1.fd_write
                      (i32.load offset=60
                        (local.get $p0))
                      (i32.add
                        (local.get $l3)
                        (i32.const 16))
                      (i32.const 2)
                      (i32.add
                        (local.get $l3)
                        (i32.const 12))))))
              (local.set $l5
                (local.get $l4))
              (br $B3))
            (loop $L5
              (br_if $B2
                (i32.eq
                  (local.get $l6)
                  (local.tee $p1
                    (i32.load offset=12
                      (local.get $l3)))))
              (block $B6
                (br_if $B6
                  (i32.gt_s
                    (local.get $p1)
                    (i32.const -1)))
                (local.set $l5
                  (local.get $l4))
                (br $B1))
              (i32.store
                (local.tee $l5
                  (i32.add
                    (local.get $l4)
                    (i32.shl
                      (local.tee $l9
                        (i32.gt_u
                          (local.get $p1)
                          (local.tee $l8
                            (i32.load offset=4
                              (local.get $l4)))))
                      (i32.const 3))))
                (i32.add
                  (i32.load
                    (local.get $l5))
                  (local.tee $l8
                    (i32.sub
                      (local.get $p1)
                      (select
                        (local.get $l8)
                        (i32.const 0)
                        (local.get $l9))))))
              (i32.store
                (local.tee $l4
                  (i32.add
                    (local.get $l4)
                    (select
                      (i32.const 12)
                      (i32.const 4)
                      (local.get $l9))))
                (i32.sub
                  (i32.load
                    (local.get $l4))
                  (local.get $l8)))
              (local.set $l6
                (i32.sub
                  (local.get $l6)
                  (local.get $p1)))
              (local.set $l4
                (local.get $l5))
              (br_if $L5
                (i32.eqz
                  (call $f36
                    (call $wasi_snapshot_preview1.fd_write
                      (i32.load offset=60
                        (local.get $p0))
                      (local.get $l5)
                      (local.tee $l7
                        (i32.sub
                          (local.get $l7)
                          (local.get $l9)))
                      (i32.add
                        (local.get $l3)
                        (i32.const 12))))))))
          (br_if $B1
            (i32.ne
              (local.get $l6)
              (i32.const -1))))
        (i32.store offset=28
          (local.get $p0)
          (local.tee $p1
            (i32.load offset=44
              (local.get $p0))))
        (i32.store offset=20
          (local.get $p0)
          (local.get $p1))
        (i32.store offset=16
          (local.get $p0)
          (i32.add
            (local.get $p1)
            (i32.load offset=48
              (local.get $p0))))
        (local.set $p1
          (local.get $p2))
        (br $B0))
      (local.set $p1
        (i32.const 0))
      (i32.store offset=28
        (local.get $p0)
        (i32.const 0))
      (i64.store offset=16
        (local.get $p0)
        (i64.const 0))
      (i32.store
        (local.get $p0)
        (i32.or
          (i32.load
            (local.get $p0))
          (i32.const 32)))
      (br_if $B0
        (i32.eq
          (local.get $l7)
          (i32.const 2)))
      (local.set $p1
        (i32.sub
          (local.get $p2)
          (i32.load offset=4
            (local.get $l5)))))
    (global.set $g0
      (i32.add
        (local.get $l3)
        (i32.const 32)))
    (local.get $p1))
  (func $f7 (type $t2) (param $p0 i32) (result i32)
    (i32.const 0))
  (func $f8 (type $t6) (param $p0 i32) (param $p1 i64) (param $p2 i32) (result i64)
    (i64.const 0))
  (func $f9 (type $t1) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i64)
    (block $B0
      (br_if $B0
        (i32.eqz
          (local.get $p2)))
      (i32.store8
        (local.get $p0)
        (local.get $p1))
      (i32.store8
        (i32.add
          (local.tee $l3
            (i32.add
              (local.get $p0)
              (local.get $p2)))
          (i32.const -1))
        (local.get $p1))
      (br_if $B0
        (i32.lt_u
          (local.get $p2)
          (i32.const 3)))
      (i32.store8 offset=2
        (local.get $p0)
        (local.get $p1))
      (i32.store8 offset=1
        (local.get $p0)
        (local.get $p1))
      (i32.store8
        (i32.add
          (local.get $l3)
          (i32.const -3))
        (local.get $p1))
      (i32.store8
        (i32.add
          (local.get $l3)
          (i32.const -2))
        (local.get $p1))
      (br_if $B0
        (i32.lt_u
          (local.get $p2)
          (i32.const 7)))
      (i32.store8 offset=3
        (local.get $p0)
        (local.get $p1))
      (i32.store8
        (i32.add
          (local.get $l3)
          (i32.const -4))
        (local.get $p1))
      (br_if $B0
        (i32.lt_u
          (local.get $p2)
          (i32.const 9)))
      (i32.store
        (local.tee $l3
          (i32.add
            (local.get $p0)
            (local.tee $l4
              (i32.and
                (i32.sub
                  (i32.const 0)
                  (local.get $p0))
                (i32.const 3)))))
        (local.tee $p1
          (i32.mul
            (i32.and
              (local.get $p1)
              (i32.const 255))
            (i32.const 16843009))))
      (i32.store
        (i32.add
          (local.tee $p2
            (i32.add
              (local.get $l3)
              (local.tee $l4
                (i32.and
                  (i32.sub
                    (local.get $p2)
                    (local.get $l4))
                  (i32.const -4)))))
          (i32.const -4))
        (local.get $p1))
      (br_if $B0
        (i32.lt_u
          (local.get $l4)
          (i32.const 9)))
      (i32.store offset=8
        (local.get $l3)
        (local.get $p1))
      (i32.store offset=4
        (local.get $l3)
        (local.get $p1))
      (i32.store
        (i32.add
          (local.get $p2)
          (i32.const -8))
        (local.get $p1))
      (i32.store
        (i32.add
          (local.get $p2)
          (i32.const -12))
        (local.get $p1))
      (br_if $B0
        (i32.lt_u
          (local.get $l4)
          (i32.const 25)))
      (i32.store offset=24
        (local.get $l3)
        (local.get $p1))
      (i32.store offset=20
        (local.get $l3)
        (local.get $p1))
      (i32.store offset=16
        (local.get $l3)
        (local.get $p1))
      (i32.store offset=12
        (local.get $l3)
        (local.get $p1))
      (i32.store
        (i32.add
          (local.get $p2)
          (i32.const -16))
        (local.get $p1))
      (i32.store
        (i32.add
          (local.get $p2)
          (i32.const -20))
        (local.get $p1))
      (i32.store
        (i32.add
          (local.get $p2)
          (i32.const -24))
        (local.get $p1))
      (i32.store
        (i32.add
          (local.get $p2)
          (i32.const -28))
        (local.get $p1))
      (br_if $B0
        (i32.lt_u
          (local.tee $p2
            (i32.sub
              (local.get $l4)
              (local.tee $l5
                (i32.or
                  (i32.and
                    (local.get $l3)
                    (i32.const 4))
                  (i32.const 24)))))
          (i32.const 32)))
      (local.set $l6
        (i64.mul
          (i64.extend_i32_u
            (local.get $p1))
          (i64.const 4294967297)))
      (local.set $p1
        (i32.add
          (local.get $l3)
          (local.get $l5)))
      (loop $L1
        (i64.store offset=24
          (local.get $p1)
          (local.get $l6))
        (i64.store offset=16
          (local.get $p1)
          (local.get $l6))
        (i64.store offset=8
          (local.get $p1)
          (local.get $l6))
        (i64.store
          (local.get $p1)
          (local.get $l6))
        (local.set $p1
          (i32.add
            (local.get $p1)
            (i32.const 32)))
        (br_if $L1
          (i32.gt_u
            (local.tee $p2
              (i32.add
                (local.get $p2)
                (i32.const -32)))
            (i32.const 31)))))
    (local.get $p0))
  (func $f10 (type $t2) (param $p0 i32) (result i32)
    (i32.const 1))
  (func $f11 (type $t3) (param $p0 i32))
  (func $f12 (type $t3) (param $p0 i32))
  (func $f13 (type $t3) (param $p0 i32))
  (func $f14 (type $t0) (result i32)
    (call $f12
      (i32.const 67288))
    (i32.const 67292))
  (func $f15 (type $t4)
    (call $f13
      (i32.const 67288)))
  (func $f16 (type $t2) (param $p0 i32) (result i32)
    (local $l1 i32)
    (i32.store offset=72
      (local.get $p0)
      (i32.or
        (i32.add
          (local.tee $l1
            (i32.load offset=72
              (local.get $p0)))
          (i32.const -1))
        (local.get $l1)))
    (block $B0
      (br_if $B0
        (i32.eqz
          (i32.and
            (local.tee $l1
              (i32.load
                (local.get $p0)))
            (i32.const 8))))
      (i32.store
        (local.get $p0)
        (i32.or
          (local.get $l1)
          (i32.const 32)))
      (return
        (i32.const -1)))
    (i64.store offset=4 align=4
      (local.get $p0)
      (i64.const 0))
    (i32.store offset=28
      (local.get $p0)
      (local.tee $l1
        (i32.load offset=44
          (local.get $p0))))
    (i32.store offset=20
      (local.get $p0)
      (local.get $l1))
    (i32.store offset=16
      (local.get $p0)
      (i32.add
        (local.get $l1)
        (i32.load offset=48
          (local.get $p0))))
    (i32.const 0))
  (func $f17 (type $t1) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i32)
    (local.set $l3
      (i32.ne
        (local.get $p2)
        (i32.const 0)))
    (block $B0
      (block $B1
        (block $B2
          (br_if $B2
            (i32.eqz
              (i32.and
                (local.get $p0)
                (i32.const 3))))
          (br_if $B2
            (i32.eqz
              (local.get $p2)))
          (local.set $l4
            (i32.and
              (local.get $p1)
              (i32.const 255)))
          (loop $L3
            (br_if $B1
              (i32.eq
                (i32.load8_u
                  (local.get $p0))
                (local.get $l4)))
            (local.set $l3
              (i32.ne
                (local.tee $p2
                  (i32.add
                    (local.get $p2)
                    (i32.const -1)))
                (i32.const 0)))
            (br_if $B2
              (i32.eqz
                (i32.and
                  (local.tee $p0
                    (i32.add
                      (local.get $p0)
                      (i32.const 1)))
                  (i32.const 3))))
            (br_if $L3
              (local.get $p2))))
        (br_if $B0
          (i32.eqz
            (local.get $l3)))
        (block $B4
          (br_if $B4
            (i32.eq
              (i32.load8_u
                (local.get $p0))
              (i32.and
                (local.get $p1)
                (i32.const 255))))
          (br_if $B4
            (i32.lt_u
              (local.get $p2)
              (i32.const 4)))
          (local.set $l4
            (i32.mul
              (i32.and
                (local.get $p1)
                (i32.const 255))
              (i32.const 16843009)))
          (loop $L5
            (br_if $B1
              (i32.ne
                (i32.and
                  (i32.or
                    (i32.sub
                      (i32.const 16843008)
                      (local.tee $l3
                        (i32.xor
                          (i32.load
                            (local.get $p0))
                          (local.get $l4))))
                    (local.get $l3))
                  (i32.const -2139062144))
                (i32.const -2139062144)))
            (local.set $p0
              (i32.add
                (local.get $p0)
                (i32.const 4)))
            (br_if $L5
              (i32.gt_u
                (local.tee $p2
                  (i32.add
                    (local.get $p2)
                    (i32.const -4)))
                (i32.const 3)))))
        (br_if $B0
          (i32.eqz
            (local.get $p2))))
      (local.set $l3
        (i32.and
          (local.get $p1)
          (i32.const 255)))
      (loop $L6
        (block $B7
          (br_if $B7
            (i32.ne
              (i32.load8_u
                (local.get $p0))
              (local.get $l3)))
          (return
            (local.get $p0)))
        (local.set $p0
          (i32.add
            (local.get $p0)
            (i32.const 1)))
        (br_if $L6
          (local.tee $p2
            (i32.add
              (local.get $p2)
              (i32.const -1))))))
    (i32.const 0))
  (func $f18 (type $t5) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32)
    (select
      (i32.sub
        (local.tee $l2
          (call $f17
            (local.get $p0)
            (i32.const 0)
            (local.get $p1)))
        (local.get $p0))
      (local.get $p1)
      (local.get $l2)))
  (func $f19 (type $t0) (result i32)
    (i32.const 67300))
  (func $f20 (type $t14) (param $p0 f64) (param $p1 i32) (result f64)
    (local $l2 i64) (local $l3 i32)
    (block $B0
      (br_if $B0
        (i32.eq
          (local.tee $l3
            (i32.and
              (i32.wrap_i64
                (i64.shr_u
                  (local.tee $l2
                    (i64.reinterpret_f64
                      (local.get $p0)))
                  (i64.const 52)))
              (i32.const 2047)))
          (i32.const 2047)))
      (block $B1
        (br_if $B1
          (local.get $l3))
        (block $B2
          (block $B3
            (br_if $B3
              (f64.ne
                (local.get $p0)
                (f64.const 0x0p+0 (;=0;))))
            (local.set $l3
              (i32.const 0))
            (br $B2))
          (local.set $p0
            (call $f20
              (f64.mul
                (local.get $p0)
                (f64.const 0x1p+64 (;=1.84467e+19;)))
              (local.get $p1)))
          (local.set $l3
            (i32.add
              (i32.load
                (local.get $p1))
              (i32.const -64))))
        (i32.store
          (local.get $p1)
          (local.get $l3))
        (return
          (local.get $p0)))
      (i32.store
        (local.get $p1)
        (i32.add
          (local.get $l3)
          (i32.const -1022)))
      (local.set $p0
        (f64.reinterpret_i64
          (i64.or
            (i64.and
              (local.get $l2)
              (i64.const -9218868437227405313))
            (i64.const 4602678819172646912)))))
    (local.get $p0))
  (func $f21 (type $t1) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32)
    (block $B0
      (br_if $B0
        (i32.lt_u
          (local.get $p2)
          (i32.const 512)))
      (call $env._emscripten_memcpy_js
        (local.get $p0)
        (local.get $p1)
        (local.get $p2))
      (return
        (local.get $p0)))
    (local.set $l3
      (i32.add
        (local.get $p0)
        (local.get $p2)))
    (block $B1
      (block $B2
        (br_if $B2
          (i32.and
            (i32.xor
              (local.get $p1)
              (local.get $p0))
            (i32.const 3)))
        (block $B3
          (block $B4
            (br_if $B4
              (i32.and
                (local.get $p0)
                (i32.const 3)))
            (local.set $p2
              (local.get $p0))
            (br $B3))
          (block $B5
            (br_if $B5
              (local.get $p2))
            (local.set $p2
              (local.get $p0))
            (br $B3))
          (local.set $p2
            (local.get $p0))
          (loop $L6
            (i32.store8
              (local.get $p2)
              (i32.load8_u
                (local.get $p1)))
            (local.set $p1
              (i32.add
                (local.get $p1)
                (i32.const 1)))
            (br_if $B3
              (i32.eqz
                (i32.and
                  (local.tee $p2
                    (i32.add
                      (local.get $p2)
                      (i32.const 1)))
                  (i32.const 3))))
            (br_if $L6
              (i32.lt_u
                (local.get $p2)
                (local.get $l3)))))
        (block $B7
          (br_if $B7
            (i32.lt_u
              (local.tee $l4
                (i32.and
                  (local.get $l3)
                  (i32.const -4)))
              (i32.const 64)))
          (br_if $B7
            (i32.gt_u
              (local.get $p2)
              (local.tee $l5
                (i32.add
                  (local.get $l4)
                  (i32.const -64)))))
          (loop $L8
            (i32.store
              (local.get $p2)
              (i32.load
                (local.get $p1)))
            (i32.store offset=4
              (local.get $p2)
              (i32.load offset=4
                (local.get $p1)))
            (i32.store offset=8
              (local.get $p2)
              (i32.load offset=8
                (local.get $p1)))
            (i32.store offset=12
              (local.get $p2)
              (i32.load offset=12
                (local.get $p1)))
            (i32.store offset=16
              (local.get $p2)
              (i32.load offset=16
                (local.get $p1)))
            (i32.store offset=20
              (local.get $p2)
              (i32.load offset=20
                (local.get $p1)))
            (i32.store offset=24
              (local.get $p2)
              (i32.load offset=24
                (local.get $p1)))
            (i32.store offset=28
              (local.get $p2)
              (i32.load offset=28
                (local.get $p1)))
            (i32.store offset=32
              (local.get $p2)
              (i32.load offset=32
                (local.get $p1)))
            (i32.store offset=36
              (local.get $p2)
              (i32.load offset=36
                (local.get $p1)))
            (i32.store offset=40
              (local.get $p2)
              (i32.load offset=40
                (local.get $p1)))
            (i32.store offset=44
              (local.get $p2)
              (i32.load offset=44
                (local.get $p1)))
            (i32.store offset=48
              (local.get $p2)
              (i32.load offset=48
                (local.get $p1)))
            (i32.store offset=52
              (local.get $p2)
              (i32.load offset=52
                (local.get $p1)))
            (i32.store offset=56
              (local.get $p2)
              (i32.load offset=56
                (local.get $p1)))
            (i32.store offset=60
              (local.get $p2)
              (i32.load offset=60
                (local.get $p1)))
            (local.set $p1
              (i32.add
                (local.get $p1)
                (i32.const 64)))
            (br_if $L8
              (i32.le_u
                (local.tee $p2
                  (i32.add
                    (local.get $p2)
                    (i32.const 64)))
                (local.get $l5)))))
        (br_if $B1
          (i32.ge_u
            (local.get $p2)
            (local.get $l4)))
        (loop $L9
          (i32.store
            (local.get $p2)
            (i32.load
              (local.get $p1)))
          (local.set $p1
            (i32.add
              (local.get $p1)
              (i32.const 4)))
          (br_if $L9
            (i32.lt_u
              (local.tee $p2
                (i32.add
                  (local.get $p2)
                  (i32.const 4)))
              (local.get $l4)))
          (br $B1))
        (unreachable))
      (block $B10
        (br_if $B10
          (i32.ge_u
            (local.get $l3)
            (i32.const 4)))
        (local.set $p2
          (local.get $p0))
        (br $B1))
      (block $B11
        (br_if $B11
          (i32.ge_u
            (local.tee $l4
              (i32.add
                (local.get $l3)
                (i32.const -4)))
            (local.get $p0)))
        (local.set $p2
          (local.get $p0))
        (br $B1))
      (local.set $p2
        (local.get $p0))
      (loop $L12
        (i32.store8
          (local.get $p2)
          (i32.load8_u
            (local.get $p1)))
        (i32.store8 offset=1
          (local.get $p2)
          (i32.load8_u offset=1
            (local.get $p1)))
        (i32.store8 offset=2
          (local.get $p2)
          (i32.load8_u offset=2
            (local.get $p1)))
        (i32.store8 offset=3
          (local.get $p2)
          (i32.load8_u offset=3
            (local.get $p1)))
        (local.set $p1
          (i32.add
            (local.get $p1)
            (i32.const 4)))
        (br_if $L12
          (i32.le_u
            (local.tee $p2
              (i32.add
                (local.get $p2)
                (i32.const 4)))
            (local.get $l4)))))
    (block $B13
      (br_if $B13
        (i32.ge_u
          (local.get $p2)
          (local.get $l3)))
      (loop $L14
        (i32.store8
          (local.get $p2)
          (i32.load8_u
            (local.get $p1)))
        (local.set $p1
          (i32.add
            (local.get $p1)
            (i32.const 1)))
        (br_if $L14
          (i32.ne
            (local.tee $p2
              (i32.add
                (local.get $p2)
                (i32.const 1)))
            (local.get $l3)))))
    (local.get $p0))
  (func $f22 (type $t1) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32)
    (block $B0
      (block $B1
        (br_if $B1
          (local.tee $l3
            (i32.load offset=16
              (local.get $p2))))
        (local.set $l4
          (i32.const 0))
        (br_if $B0
          (call $f16
            (local.get $p2)))
        (local.set $l3
          (i32.load offset=16
            (local.get $p2))))
      (block $B2
        (br_if $B2
          (i32.ge_u
            (i32.sub
              (local.get $l3)
              (local.tee $l4
                (i32.load offset=20
                  (local.get $p2))))
            (local.get $p1)))
        (return
          (call_indirect $__indirect_function_table (type $t1)
            (local.get $p2)
            (local.get $p0)
            (local.get $p1)
            (i32.load offset=36
              (local.get $p2)))))
      (block $B3
        (block $B4
          (br_if $B4
            (i32.lt_s
              (i32.load offset=80
                (local.get $p2))
              (i32.const 0)))
          (br_if $B4
            (i32.eqz
              (local.get $p1)))
          (local.set $l3
            (local.get $p1))
          (block $B5
            (loop $L6
              (br_if $B5
                (i32.eq
                  (i32.load8_u
                    (i32.add
                      (local.tee $l5
                        (i32.add
                          (local.get $p0)
                          (local.get $l3)))
                      (i32.const -1)))
                  (i32.const 10)))
              (br_if $B4
                (i32.eqz
                  (local.tee $l3
                    (i32.add
                      (local.get $l3)
                      (i32.const -1)))))
              (br $L6))
            (unreachable))
          (br_if $B0
            (i32.lt_u
              (local.tee $l4
                (call_indirect $__indirect_function_table (type $t1)
                  (local.get $p2)
                  (local.get $p0)
                  (local.get $l3)
                  (i32.load offset=36
                    (local.get $p2))))
              (local.get $l3)))
          (local.set $p1
            (i32.sub
              (local.get $p1)
              (local.get $l3)))
          (local.set $l4
            (i32.load offset=20
              (local.get $p2)))
          (br $B3))
        (local.set $l5
          (local.get $p0))
        (local.set $l3
          (i32.const 0)))
      (drop
        (call $f21
          (local.get $l4)
          (local.get $l5)
          (local.get $p1)))
      (i32.store offset=20
        (local.get $p2)
        (i32.add
          (i32.load offset=20
            (local.get $p2))
          (local.get $p1)))
      (local.set $l4
        (i32.add
          (local.get $l3)
          (local.get $p1))))
    (local.get $l4))
  (func $f23 (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (param $p4 i32) (result i32)
    (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32)
    (global.set $g0
      (local.tee $l5
        (i32.sub
          (global.get $g0)
          (i32.const 208))))
    (i32.store offset=204
      (local.get $l5)
      (local.get $p2))
    (drop
      (call $f9
        (i32.add
          (local.get $l5)
          (i32.const 160))
        (i32.const 0)
        (i32.const 40)))
    (i32.store offset=200
      (local.get $l5)
      (i32.load offset=204
        (local.get $l5)))
    (block $B0
      (block $B1
        (br_if $B1
          (i32.ge_s
            (call $f24
              (i32.const 0)
              (local.get $p1)
              (i32.add
                (local.get $l5)
                (i32.const 200))
              (i32.add
                (local.get $l5)
                (i32.const 80))
              (i32.add
                (local.get $l5)
                (i32.const 160))
              (local.get $p3)
              (local.get $p4))
            (i32.const 0)))
        (local.set $p4
          (i32.const -1))
        (br $B0))
      (block $B2
        (block $B3
          (br_if $B3
            (i32.ge_s
              (i32.load offset=76
                (local.get $p0))
              (i32.const 0)))
          (local.set $l6
            (i32.const 1))
          (br $B2))
        (local.set $l6
          (i32.eqz
            (call $f10
              (local.get $p0)))))
      (i32.store
        (local.get $p0)
        (i32.and
          (local.tee $l7
            (i32.load
              (local.get $p0)))
          (i32.const -33)))
      (block $B4
        (block $B5
          (block $B6
            (block $B7
              (br_if $B7
                (i32.load offset=48
                  (local.get $p0)))
              (i32.store offset=48
                (local.get $p0)
                (i32.const 80))
              (i32.store offset=28
                (local.get $p0)
                (i32.const 0))
              (i64.store offset=16
                (local.get $p0)
                (i64.const 0))
              (local.set $l8
                (i32.load offset=44
                  (local.get $p0)))
              (i32.store offset=44
                (local.get $p0)
                (local.get $l5))
              (br $B6))
            (local.set $l8
              (i32.const 0))
            (br_if $B5
              (i32.load offset=16
                (local.get $p0))))
          (local.set $p2
            (i32.const -1))
          (br_if $B4
            (call $f16
              (local.get $p0))))
        (local.set $p2
          (call $f24
            (local.get $p0)
            (local.get $p1)
            (i32.add
              (local.get $l5)
              (i32.const 200))
            (i32.add
              (local.get $l5)
              (i32.const 80))
            (i32.add
              (local.get $l5)
              (i32.const 160))
            (local.get $p3)
            (local.get $p4))))
      (local.set $p4
        (i32.and
          (local.get $l7)
          (i32.const 32)))
      (block $B8
        (br_if $B8
          (i32.eqz
            (local.get $l8)))
        (drop
          (call_indirect $__indirect_function_table (type $t1)
            (local.get $p0)
            (i32.const 0)
            (i32.const 0)
            (i32.load offset=36
              (local.get $p0))))
        (i32.store offset=48
          (local.get $p0)
          (i32.const 0))
        (i32.store offset=44
          (local.get $p0)
          (local.get $l8))
        (i32.store offset=28
          (local.get $p0)
          (i32.const 0))
        (local.set $p3
          (i32.load offset=20
            (local.get $p0)))
        (i64.store offset=16
          (local.get $p0)
          (i64.const 0))
        (local.set $p2
          (select
            (local.get $p2)
            (i32.const -1)
            (local.get $p3))))
      (i32.store
        (local.get $p0)
        (i32.or
          (local.tee $p3
            (i32.load
              (local.get $p0)))
          (local.get $p4)))
      (local.set $p4
        (select
          (i32.const -1)
          (local.get $p2)
          (i32.and
            (local.get $p3)
            (i32.const 32))))
      (br_if $B0
        (local.get $l6))
      (call $f11
        (local.get $p0)))
    (global.set $g0
      (i32.add
        (local.get $l5)
        (i32.const 208)))
    (local.get $p4))
  (func $f24 (type $t15) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (param $p4 i32) (param $p5 i32) (param $p6 i32) (result i32)
    (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32) (local $l11 i32) (local $l12 i32) (local $l13 i32) (local $l14 i32) (local $l15 i32) (local $l16 i32) (local $l17 i32) (local $l18 i32) (local $l19 i32) (local $l20 i32) (local $l21 i32) (local $l22 i32) (local $l23 i32) (local $l24 i32) (local $l25 i64)
    (global.set $g0
      (local.tee $l7
        (i32.sub
          (global.get $g0)
          (i32.const 64))))
    (i32.store offset=60
      (local.get $l7)
      (local.get $p1))
    (local.set $l8
      (i32.add
        (local.get $l7)
        (i32.const 39)))
    (local.set $l9
      (i32.add
        (local.get $l7)
        (i32.const 40)))
    (local.set $l10
      (i32.const 0))
    (local.set $l11
      (i32.const 0))
    (block $B0
      (block $B1
        (block $B2
          (block $B3
            (loop $L4
              (local.set $l12
                (i32.const 0))
              (loop $L5
                (local.set $l13
                  (local.get $p1))
                (br_if $B3
                  (i32.gt_s
                    (local.get $l12)
                    (i32.xor
                      (local.get $l11)
                      (i32.const 2147483647))))
                (local.set $l11
                  (i32.add
                    (local.get $l12)
                    (local.get $l11)))
                (local.set $l12
                  (local.get $l13))
                (block $B6
                  (block $B7
                    (block $B8
                      (block $B9
                        (block $B10
                          (block $B11
                            (br_if $B11
                              (i32.eqz
                                (local.tee $l14
                                  (i32.load8_u
                                    (local.get $l13)))))
                            (loop $L12
                              (block $B13
                                (block $B14
                                  (block $B15
                                    (br_if $B15
                                      (local.tee $l14
                                        (i32.and
                                          (local.get $l14)
                                          (i32.const 255))))
                                    (local.set $p1
                                      (local.get $l12))
                                    (br $B14))
                                  (br_if $B13
                                    (i32.ne
                                      (local.get $l14)
                                      (i32.const 37)))
                                  (local.set $l14
                                    (local.get $l12))
                                  (loop $L16
                                    (block $B17
                                      (br_if $B17
                                        (i32.eq
                                          (i32.load8_u offset=1
                                            (local.get $l14))
                                          (i32.const 37)))
                                      (local.set $p1
                                        (local.get $l14))
                                      (br $B14))
                                    (local.set $l12
                                      (i32.add
                                        (local.get $l12)
                                        (i32.const 1)))
                                    (local.set $l15
                                      (i32.load8_u offset=2
                                        (local.get $l14)))
                                    (local.set $l14
                                      (local.tee $p1
                                        (i32.add
                                          (local.get $l14)
                                          (i32.const 2))))
                                    (br_if $L16
                                      (i32.eq
                                        (local.get $l15)
                                        (i32.const 37)))))
                                (br_if $B3
                                  (i32.gt_s
                                    (local.tee $l12
                                      (i32.sub
                                        (local.get $l12)
                                        (local.get $l13)))
                                    (local.tee $l14
                                      (i32.xor
                                        (local.get $l11)
                                        (i32.const 2147483647)))))
                                (block $B18
                                  (br_if $B18
                                    (i32.eqz
                                      (local.get $p0)))
                                  (call $f25
                                    (local.get $p0)
                                    (local.get $l13)
                                    (local.get $l12)))
                                (br_if $L5
                                  (local.get $l12))
                                (i32.store offset=60
                                  (local.get $l7)
                                  (local.get $p1))
                                (local.set $l12
                                  (i32.add
                                    (local.get $p1)
                                    (i32.const 1)))
                                (local.set $l16
                                  (i32.const -1))
                                (block $B19
                                  (br_if $B19
                                    (i32.gt_u
                                      (local.tee $l15
                                        (i32.add
                                          (i32.load8_s offset=1
                                            (local.get $p1))
                                          (i32.const -48)))
                                      (i32.const 9)))
                                  (br_if $B19
                                    (i32.ne
                                      (i32.load8_u offset=2
                                        (local.get $p1))
                                      (i32.const 36)))
                                  (local.set $l12
                                    (i32.add
                                      (local.get $p1)
                                      (i32.const 3)))
                                  (local.set $l10
                                    (i32.const 1))
                                  (local.set $l16
                                    (local.get $l15)))
                                (i32.store offset=60
                                  (local.get $l7)
                                  (local.get $l12))
                                (local.set $l17
                                  (i32.const 0))
                                (block $B20
                                  (block $B21
                                    (br_if $B21
                                      (i32.le_u
                                        (local.tee $p1
                                          (i32.add
                                            (local.tee $l18
                                              (i32.load8_s
                                                (local.get $l12)))
                                            (i32.const -32)))
                                        (i32.const 31)))
                                    (local.set $l15
                                      (local.get $l12))
                                    (br $B20))
                                  (local.set $l17
                                    (i32.const 0))
                                  (local.set $l15
                                    (local.get $l12))
                                  (br_if $B20
                                    (i32.eqz
                                      (i32.and
                                        (local.tee $p1
                                          (i32.shl
                                            (i32.const 1)
                                            (local.get $p1)))
                                        (i32.const 75913))))
                                  (loop $L22
                                    (i32.store offset=60
                                      (local.get $l7)
                                      (local.tee $l15
                                        (i32.add
                                          (local.get $l12)
                                          (i32.const 1))))
                                    (local.set $l17
                                      (i32.or
                                        (local.get $p1)
                                        (local.get $l17)))
                                    (br_if $B20
                                      (i32.ge_u
                                        (local.tee $p1
                                          (i32.add
                                            (local.tee $l18
                                              (i32.load8_s offset=1
                                                (local.get $l12)))
                                            (i32.const -32)))
                                        (i32.const 32)))
                                    (local.set $l12
                                      (local.get $l15))
                                    (br_if $L22
                                      (i32.and
                                        (local.tee $p1
                                          (i32.shl
                                            (i32.const 1)
                                            (local.get $p1)))
                                        (i32.const 75913)))))
                                (block $B23
                                  (block $B24
                                    (br_if $B24
                                      (i32.ne
                                        (local.get $l18)
                                        (i32.const 42)))
                                    (block $B25
                                      (block $B26
                                        (br_if $B26
                                          (i32.gt_u
                                            (local.tee $l12
                                              (i32.add
                                                (i32.load8_s offset=1
                                                  (local.get $l15))
                                                (i32.const -48)))
                                            (i32.const 9)))
                                        (br_if $B26
                                          (i32.ne
                                            (i32.load8_u offset=2
                                              (local.get $l15))
                                            (i32.const 36)))
                                        (block $B27
                                          (block $B28
                                            (br_if $B28
                                              (local.get $p0))
                                            (i32.store
                                              (i32.add
                                                (local.get $p4)
                                                (i32.shl
                                                  (local.get $l12)
                                                  (i32.const 2)))
                                              (i32.const 10))
                                            (local.set $l19
                                              (i32.const 0))
                                            (br $B27))
                                          (local.set $l19
                                            (i32.load
                                              (i32.add
                                                (local.get $p3)
                                                (i32.shl
                                                  (local.get $l12)
                                                  (i32.const 3))))))
                                        (local.set $p1
                                          (i32.add
                                            (local.get $l15)
                                            (i32.const 3)))
                                        (local.set $l10
                                          (i32.const 1))
                                        (br $B25))
                                      (br_if $B10
                                        (local.get $l10))
                                      (local.set $p1
                                        (i32.add
                                          (local.get $l15)
                                          (i32.const 1)))
                                      (block $B29
                                        (br_if $B29
                                          (local.get $p0))
                                        (i32.store offset=60
                                          (local.get $l7)
                                          (local.get $p1))
                                        (local.set $l10
                                          (i32.const 0))
                                        (local.set $l19
                                          (i32.const 0))
                                        (br $B23))
                                      (i32.store
                                        (local.get $p2)
                                        (i32.add
                                          (local.tee $l12
                                            (i32.load
                                              (local.get $p2)))
                                          (i32.const 4)))
                                      (local.set $l19
                                        (i32.load
                                          (local.get $l12)))
                                      (local.set $l10
                                        (i32.const 0)))
                                    (i32.store offset=60
                                      (local.get $l7)
                                      (local.get $p1))
                                    (br_if $B23
                                      (i32.gt_s
                                        (local.get $l19)
                                        (i32.const -1)))
                                    (local.set $l19
                                      (i32.sub
                                        (i32.const 0)
                                        (local.get $l19)))
                                    (local.set $l17
                                      (i32.or
                                        (local.get $l17)
                                        (i32.const 8192)))
                                    (br $B23))
                                  (br_if $B3
                                    (i32.lt_s
                                      (local.tee $l19
                                        (call $f26
                                          (i32.add
                                            (local.get $l7)
                                            (i32.const 60))))
                                      (i32.const 0)))
                                  (local.set $p1
                                    (i32.load offset=60
                                      (local.get $l7))))
                                (local.set $l12
                                  (i32.const 0))
                                (local.set $l20
                                  (i32.const -1))
                                (block $B30
                                  (block $B31
                                    (br_if $B31
                                      (i32.eq
                                        (i32.load8_u
                                          (local.get $p1))
                                        (i32.const 46)))
                                    (local.set $l21
                                      (i32.const 0))
                                    (br $B30))
                                  (block $B32
                                    (br_if $B32
                                      (i32.ne
                                        (i32.load8_u offset=1
                                          (local.get $p1))
                                        (i32.const 42)))
                                    (block $B33
                                      (block $B34
                                        (br_if $B34
                                          (i32.gt_u
                                            (local.tee $l15
                                              (i32.add
                                                (i32.load8_s offset=2
                                                  (local.get $p1))
                                                (i32.const -48)))
                                            (i32.const 9)))
                                        (br_if $B34
                                          (i32.ne
                                            (i32.load8_u offset=3
                                              (local.get $p1))
                                            (i32.const 36)))
                                        (block $B35
                                          (block $B36
                                            (br_if $B36
                                              (local.get $p0))
                                            (i32.store
                                              (i32.add
                                                (local.get $p4)
                                                (i32.shl
                                                  (local.get $l15)
                                                  (i32.const 2)))
                                              (i32.const 10))
                                            (local.set $l20
                                              (i32.const 0))
                                            (br $B35))
                                          (local.set $l20
                                            (i32.load
                                              (i32.add
                                                (local.get $p3)
                                                (i32.shl
                                                  (local.get $l15)
                                                  (i32.const 3))))))
                                        (local.set $p1
                                          (i32.add
                                            (local.get $p1)
                                            (i32.const 4)))
                                        (br $B33))
                                      (br_if $B10
                                        (local.get $l10))
                                      (local.set $p1
                                        (i32.add
                                          (local.get $p1)
                                          (i32.const 2)))
                                      (block $B37
                                        (br_if $B37
                                          (local.get $p0))
                                        (local.set $l20
                                          (i32.const 0))
                                        (br $B33))
                                      (i32.store
                                        (local.get $p2)
                                        (i32.add
                                          (local.tee $l15
                                            (i32.load
                                              (local.get $p2)))
                                          (i32.const 4)))
                                      (local.set $l20
                                        (i32.load
                                          (local.get $l15))))
                                    (i32.store offset=60
                                      (local.get $l7)
                                      (local.get $p1))
                                    (local.set $l21
                                      (i32.gt_s
                                        (local.get $l20)
                                        (i32.const -1)))
                                    (br $B30))
                                  (i32.store offset=60
                                    (local.get $l7)
                                    (i32.add
                                      (local.get $p1)
                                      (i32.const 1)))
                                  (local.set $l21
                                    (i32.const 1))
                                  (local.set $l20
                                    (call $f26
                                      (i32.add
                                        (local.get $l7)
                                        (i32.const 60))))
                                  (local.set $p1
                                    (i32.load offset=60
                                      (local.get $l7))))
                                (loop $L38
                                  (local.set $l15
                                    (local.get $l12))
                                  (local.set $l22
                                    (i32.const 28))
                                  (br_if $B2
                                    (i32.lt_u
                                      (i32.add
                                        (local.tee $l12
                                          (i32.load8_s
                                            (local.tee $l18
                                              (local.get $p1))))
                                        (i32.const -123))
                                      (i32.const -58)))
                                  (local.set $p1
                                    (i32.add
                                      (local.get $l18)
                                      (i32.const 1)))
                                  (br_if $L38
                                    (i32.lt_u
                                      (i32.add
                                        (local.tee $l12
                                          (i32.load8_u
                                            (i32.add
                                              (i32.add
                                                (local.get $l12)
                                                (i32.mul
                                                  (local.get $l15)
                                                  (i32.const 58)))
                                              (i32.const 65551))))
                                        (i32.const -1))
                                      (i32.const 8))))
                                (i32.store offset=60
                                  (local.get $l7)
                                  (local.get $p1))
                                (block $B39
                                  (block $B40
                                    (br_if $B40
                                      (i32.eq
                                        (local.get $l12)
                                        (i32.const 27)))
                                    (br_if $B2
                                      (i32.eqz
                                        (local.get $l12)))
                                    (block $B41
                                      (br_if $B41
                                        (i32.lt_s
                                          (local.get $l16)
                                          (i32.const 0)))
                                      (block $B42
                                        (br_if $B42
                                          (local.get $p0))
                                        (i32.store
                                          (i32.add
                                            (local.get $p4)
                                            (i32.shl
                                              (local.get $l16)
                                              (i32.const 2)))
                                          (local.get $l12))
                                        (br $L4))
                                      (i64.store offset=48
                                        (local.get $l7)
                                        (i64.load
                                          (i32.add
                                            (local.get $p3)
                                            (i32.shl
                                              (local.get $l16)
                                              (i32.const 3)))))
                                      (br $B39))
                                    (br_if $B6
                                      (i32.eqz
                                        (local.get $p0)))
                                    (call $f27
                                      (i32.add
                                        (local.get $l7)
                                        (i32.const 48))
                                      (local.get $l12)
                                      (local.get $p2)
                                      (local.get $p6))
                                    (br $B39))
                                  (br_if $B2
                                    (i32.gt_s
                                      (local.get $l16)
                                      (i32.const -1)))
                                  (local.set $l12
                                    (i32.const 0))
                                  (br_if $L5
                                    (i32.eqz
                                      (local.get $p0))))
                                (br_if $B1
                                  (i32.and
                                    (i32.load8_u
                                      (local.get $p0))
                                    (i32.const 32)))
                                (local.set $l17
                                  (select
                                    (local.tee $l23
                                      (i32.and
                                        (local.get $l17)
                                        (i32.const -65537)))
                                    (local.get $l17)
                                    (i32.and
                                      (local.get $l17)
                                      (i32.const 8192))))
                                (local.set $l16
                                  (i32.const 0))
                                (local.set $l24
                                  (i32.const 65536))
                                (local.set $l22
                                  (local.get $l9))
                                (block $B43
                                  (block $B44
                                    (block $B45
                                      (block $B46
                                        (block $B47
                                          (block $B48
                                            (block $B49
                                              (block $B50
                                                (block $B51
                                                  (block $B52
                                                    (block $B53
                                                      (block $B54
                                                        (block $B55
                                                          (block $B56
                                                            (block $B57
                                                              (block $B58
                                                                (block $B59
                                                                  (br_table $B55 $B7 $B7 $B7 $B7 $B7 $B7 $B7 $B7 $B43 $B7 $B50 $B53 $B43 $B43 $B43 $B7 $B53 $B7 $B7 $B7 $B7 $B57 $B54 $B56 $B7 $B7 $B49 $B7 $B58 $B7 $B7 $B55 $B59
                                                                    (i32.add
                                                                      (local.tee $l12
                                                                        (select
                                                                          (select
                                                                            (i32.and
                                                                              (local.tee $l12
                                                                                (i32.load8_s
                                                                                  (local.get $l18)))
                                                                              (i32.const -45))
                                                                            (local.get $l12)
                                                                            (i32.eq
                                                                              (i32.and
                                                                                (local.get $l12)
                                                                                (i32.const 15))
                                                                              (i32.const 3)))
                                                                          (local.get $l12)
                                                                          (local.get $l15)))
                                                                      (i32.const -88))))
                                                                (local.set $l22
                                                                  (local.get $l9))
                                                                (block $B60
                                                                  (br_table $B43 $B7 $B48 $B7 $B43 $B43 $B43 $B60
                                                                    (i32.add
                                                                      (local.get $l12)
                                                                      (i32.const -65))))
                                                                (br_if $B47
                                                                  (i32.eq
                                                                    (local.get $l12)
                                                                    (i32.const 83)))
                                                                (br $B8))
                                                              (local.set $l16
                                                                (i32.const 0))
                                                              (local.set $l24
                                                                (i32.const 65536))
                                                              (local.set $l25
                                                                (i64.load offset=48
                                                                  (local.get $l7)))
                                                              (br $B52))
                                                            (local.set $l12
                                                              (i32.const 0))
                                                            (block $B61
                                                              (block $B62
                                                                (block $B63
                                                                  (block $B64
                                                                    (block $B65
                                                                      (block $B66
                                                                        (block $B67
                                                                          (br_table $B67 $B66 $B65 $B64 $B63 $L5 $B62 $B61 $L5
                                                                            (i32.and
                                                                              (local.get $l15)
                                                                              (i32.const 255))))
                                                                        (i32.store
                                                                          (i32.load offset=48
                                                                            (local.get $l7))
                                                                          (local.get $l11))
                                                                        (br $L5))
                                                                      (i32.store
                                                                        (i32.load offset=48
                                                                          (local.get $l7))
                                                                        (local.get $l11))
                                                                      (br $L5))
                                                                    (i64.store
                                                                      (i32.load offset=48
                                                                        (local.get $l7))
                                                                      (i64.extend_i32_s
                                                                        (local.get $l11)))
                                                                    (br $L5))
                                                                  (i32.store16
                                                                    (i32.load offset=48
                                                                      (local.get $l7))
                                                                    (local.get $l11))
                                                                  (br $L5))
                                                                (i32.store8
                                                                  (i32.load offset=48
                                                                    (local.get $l7))
                                                                  (local.get $l11))
                                                                (br $L5))
                                                              (i32.store
                                                                (i32.load offset=48
                                                                  (local.get $l7))
                                                                (local.get $l11))
                                                              (br $L5))
                                                            (i64.store
                                                              (i32.load offset=48
                                                                (local.get $l7))
                                                              (i64.extend_i32_s
                                                                (local.get $l11)))
                                                            (br $L5))
                                                          (local.set $l20
                                                            (select
                                                              (local.get $l20)
                                                              (i32.const 8)
                                                              (i32.gt_u
                                                                (local.get $l20)
                                                                (i32.const 8))))
                                                          (local.set $l17
                                                            (i32.or
                                                              (local.get $l17)
                                                              (i32.const 8)))
                                                          (local.set $l12
                                                            (i32.const 120)))
                                                        (local.set $l13
                                                          (call $f28
                                                            (i64.load offset=48
                                                              (local.get $l7))
                                                            (local.get $l9)
                                                            (i32.and
                                                              (local.get $l12)
                                                              (i32.const 32))))
                                                        (local.set $l16
                                                          (i32.const 0))
                                                        (local.set $l24
                                                          (i32.const 65536))
                                                        (br_if $B51
                                                          (i64.eqz
                                                            (i64.load offset=48
                                                              (local.get $l7))))
                                                        (br_if $B51
                                                          (i32.eqz
                                                            (i32.and
                                                              (local.get $l17)
                                                              (i32.const 8))))
                                                        (local.set $l24
                                                          (i32.add
                                                            (i32.shr_u
                                                              (local.get $l12)
                                                              (i32.const 4))
                                                            (i32.const 65536)))
                                                        (local.set $l16
                                                          (i32.const 2))
                                                        (br $B51))
                                                      (local.set $l16
                                                        (i32.const 0))
                                                      (local.set $l24
                                                        (i32.const 65536))
                                                      (local.set $l13
                                                        (call $f29
                                                          (i64.load offset=48
                                                            (local.get $l7))
                                                          (local.get $l9)))
                                                      (br_if $B51
                                                        (i32.eqz
                                                          (i32.and
                                                            (local.get $l17)
                                                            (i32.const 8))))
                                                      (local.set $l20
                                                        (select
                                                          (local.get $l20)
                                                          (i32.add
                                                            (local.tee $l12
                                                              (i32.sub
                                                                (local.get $l9)
                                                                (local.get $l13)))
                                                            (i32.const 1))
                                                          (i32.gt_s
                                                            (local.get $l20)
                                                            (local.get $l12))))
                                                      (br $B51))
                                                    (block $B68
                                                      (br_if $B68
                                                        (i64.gt_s
                                                          (local.tee $l25
                                                            (i64.load offset=48
                                                              (local.get $l7)))
                                                          (i64.const -1)))
                                                      (i64.store offset=48
                                                        (local.get $l7)
                                                        (local.tee $l25
                                                          (i64.sub
                                                            (i64.const 0)
                                                            (local.get $l25))))
                                                      (local.set $l16
                                                        (i32.const 1))
                                                      (local.set $l24
                                                        (i32.const 65536))
                                                      (br $B52))
                                                    (block $B69
                                                      (br_if $B69
                                                        (i32.eqz
                                                          (i32.and
                                                            (local.get $l17)
                                                            (i32.const 2048))))
                                                      (local.set $l16
                                                        (i32.const 1))
                                                      (local.set $l24
                                                        (i32.const 65537))
                                                      (br $B52))
                                                    (local.set $l24
                                                      (select
                                                        (i32.const 65538)
                                                        (i32.const 65536)
                                                        (local.tee $l16
                                                          (i32.and
                                                            (local.get $l17)
                                                            (i32.const 1))))))
                                                  (local.set $l13
                                                    (call $f30
                                                      (local.get $l25)
                                                      (local.get $l9))))
                                                (br_if $B3
                                                  (i32.and
                                                    (local.get $l21)
                                                    (i32.lt_s
                                                      (local.get $l20)
                                                      (i32.const 0))))
                                                (local.set $l17
                                                  (select
                                                    (i32.and
                                                      (local.get $l17)
                                                      (i32.const -65537))
                                                    (local.get $l17)
                                                    (local.get $l21)))
                                                (block $B70
                                                  (br_if $B70
                                                    (i64.ne
                                                      (local.tee $l25
                                                        (i64.load offset=48
                                                          (local.get $l7)))
                                                      (i64.const 0)))
                                                  (br_if $B70
                                                    (local.get $l20))
                                                  (local.set $l13
                                                    (local.get $l9))
                                                  (local.set $l22
                                                    (local.get $l9))
                                                  (local.set $l20
                                                    (i32.const 0))
                                                  (br $B7))
                                                (local.set $l20
                                                  (select
                                                    (local.get $l20)
                                                    (local.tee $l12
                                                      (i32.add
                                                        (i32.sub
                                                          (local.get $l9)
                                                          (local.get $l13))
                                                        (i64.eqz
                                                          (local.get $l25))))
                                                    (i32.gt_s
                                                      (local.get $l20)
                                                      (local.get $l12))))
                                                (br $B8))
                                              (local.set $l25
                                                (i64.load offset=48
                                                  (local.get $l7)))
                                              (br $B9))
                                            (local.set $l13
                                              (select
                                                (local.tee $l12
                                                  (i32.load offset=48
                                                    (local.get $l7)))
                                                (i32.const 65583)
                                                (local.get $l12)))
                                            (local.set $l22
                                              (i32.add
                                                (local.get $l13)
                                                (local.tee $l12
                                                  (call $f18
                                                    (local.get $l13)
                                                    (select
                                                      (local.get $l20)
                                                      (i32.const 2147483647)
                                                      (i32.lt_u
                                                        (local.get $l20)
                                                        (i32.const 2147483647)))))))
                                            (block $B71
                                              (br_if $B71
                                                (i32.le_s
                                                  (local.get $l20)
                                                  (i32.const -1)))
                                              (local.set $l17
                                                (local.get $l23))
                                              (local.set $l20
                                                (local.get $l12))
                                              (br $B7))
                                            (local.set $l17
                                              (local.get $l23))
                                            (local.set $l20
                                              (local.get $l12))
                                            (br_if $B3
                                              (i32.load8_u
                                                (local.get $l22)))
                                            (br $B7))
                                          (br_if $B46
                                            (i32.eqz
                                              (i64.eqz
                                                (local.tee $l25
                                                  (i64.load offset=48
                                                    (local.get $l7))))))
                                          (local.set $l25
                                            (i64.const 0))
                                          (br $B9))
                                        (block $B72
                                          (br_if $B72
                                            (i32.eqz
                                              (local.get $l20)))
                                          (local.set $l14
                                            (i32.load offset=48
                                              (local.get $l7)))
                                          (br $B45))
                                        (local.set $l12
                                          (i32.const 0))
                                        (call $f31
                                          (local.get $p0)
                                          (i32.const 32)
                                          (local.get $l19)
                                          (i32.const 0)
                                          (local.get $l17))
                                        (br $B44))
                                      (i32.store offset=12
                                        (local.get $l7)
                                        (i32.const 0))
                                      (i64.store32 offset=8
                                        (local.get $l7)
                                        (local.get $l25))
                                      (i32.store offset=48
                                        (local.get $l7)
                                        (i32.add
                                          (local.get $l7)
                                          (i32.const 8)))
                                      (local.set $l14
                                        (i32.add
                                          (local.get $l7)
                                          (i32.const 8)))
                                      (local.set $l20
                                        (i32.const -1)))
                                    (local.set $l12
                                      (i32.const 0))
                                    (block $B73
                                      (loop $L74
                                        (br_if $B73
                                          (i32.eqz
                                            (local.tee $l15
                                              (i32.load
                                                (local.get $l14)))))
                                        (br_if $B1
                                          (i32.lt_s
                                            (local.tee $l15
                                              (call $f42
                                                (i32.add
                                                  (local.get $l7)
                                                  (i32.const 4))
                                                (local.get $l15)))
                                            (i32.const 0)))
                                        (br_if $B73
                                          (i32.gt_u
                                            (local.get $l15)
                                            (i32.sub
                                              (local.get $l20)
                                              (local.get $l12))))
                                        (local.set $l14
                                          (i32.add
                                            (local.get $l14)
                                            (i32.const 4)))
                                        (br_if $L74
                                          (i32.lt_u
                                            (local.tee $l12
                                              (i32.add
                                                (local.get $l15)
                                                (local.get $l12)))
                                            (local.get $l20)))))
                                    (local.set $l22
                                      (i32.const 61))
                                    (br_if $B2
                                      (i32.lt_s
                                        (local.get $l12)
                                        (i32.const 0)))
                                    (call $f31
                                      (local.get $p0)
                                      (i32.const 32)
                                      (local.get $l19)
                                      (local.get $l12)
                                      (local.get $l17))
                                    (block $B75
                                      (br_if $B75
                                        (local.get $l12))
                                      (local.set $l12
                                        (i32.const 0))
                                      (br $B44))
                                    (local.set $l15
                                      (i32.const 0))
                                    (local.set $l14
                                      (i32.load offset=48
                                        (local.get $l7)))
                                    (loop $L76
                                      (br_if $B44
                                        (i32.eqz
                                          (local.tee $l13
                                            (i32.load
                                              (local.get $l14)))))
                                      (br_if $B44
                                        (i32.gt_u
                                          (local.tee $l15
                                            (i32.add
                                              (local.tee $l13
                                                (call $f42
                                                  (i32.add
                                                    (local.get $l7)
                                                    (i32.const 4))
                                                  (local.get $l13)))
                                              (local.get $l15)))
                                          (local.get $l12)))
                                      (call $f25
                                        (local.get $p0)
                                        (i32.add
                                          (local.get $l7)
                                          (i32.const 4))
                                        (local.get $l13))
                                      (local.set $l14
                                        (i32.add
                                          (local.get $l14)
                                          (i32.const 4)))
                                      (br_if $L76
                                        (i32.lt_u
                                          (local.get $l15)
                                          (local.get $l12)))))
                                  (call $f31
                                    (local.get $p0)
                                    (i32.const 32)
                                    (local.get $l19)
                                    (local.get $l12)
                                    (i32.xor
                                      (local.get $l17)
                                      (i32.const 8192)))
                                  (local.set $l12
                                    (select
                                      (local.get $l19)
                                      (local.get $l12)
                                      (i32.gt_s
                                        (local.get $l19)
                                        (local.get $l12))))
                                  (br $L5))
                                (br_if $B3
                                  (i32.and
                                    (local.get $l21)
                                    (i32.lt_s
                                      (local.get $l20)
                                      (i32.const 0))))
                                (local.set $l22
                                  (i32.const 61))
                                (br_if $L5
                                  (i32.ge_s
                                    (local.tee $l12
                                      (call_indirect $__indirect_function_table (type $t9)
                                        (local.get $p0)
                                        (f64.load offset=48
                                          (local.get $l7))
                                        (local.get $l19)
                                        (local.get $l20)
                                        (local.get $l17)
                                        (local.get $l12)
                                        (local.get $p5)))
                                    (i32.const 0)))
                                (br $B2))
                              (local.set $l14
                                (i32.load8_u offset=1
                                  (local.get $l12)))
                              (local.set $l12
                                (i32.add
                                  (local.get $l12)
                                  (i32.const 1)))
                              (br $L12))
                            (unreachable))
                          (br_if $B0
                            (local.get $p0))
                          (br_if $B6
                            (i32.eqz
                              (local.get $l10)))
                          (local.set $l12
                            (i32.const 1))
                          (block $B77
                            (loop $L78
                              (br_if $B77
                                (i32.eqz
                                  (local.tee $l14
                                    (i32.load
                                      (i32.add
                                        (local.get $p4)
                                        (i32.shl
                                          (local.get $l12)
                                          (i32.const 2)))))))
                              (call $f27
                                (i32.add
                                  (local.get $p3)
                                  (i32.shl
                                    (local.get $l12)
                                    (i32.const 3)))
                                (local.get $l14)
                                (local.get $p2)
                                (local.get $p6))
                              (local.set $l11
                                (i32.const 1))
                              (br_if $L78
                                (i32.ne
                                  (local.tee $l12
                                    (i32.add
                                      (local.get $l12)
                                      (i32.const 1)))
                                  (i32.const 10)))
                              (br $B0))
                            (unreachable))
                          (local.set $l11
                            (i32.const 1))
                          (br_if $B0
                            (i32.ge_u
                              (local.get $l12)
                              (i32.const 10)))
                          (loop $L79
                            (br_if $B10
                              (i32.load
                                (i32.add
                                  (local.get $p4)
                                  (i32.shl
                                    (local.get $l12)
                                    (i32.const 2)))))
                            (local.set $l11
                              (i32.const 1))
                            (br_if $B0
                              (i32.eq
                                (local.tee $l12
                                  (i32.add
                                    (local.get $l12)
                                    (i32.const 1)))
                                (i32.const 10)))
                            (br $L79))
                          (unreachable))
                        (local.set $l22
                          (i32.const 28))
                        (br $B2))
                      (i64.store8 offset=39
                        (local.get $l7)
                        (local.get $l25))
                      (local.set $l20
                        (i32.const 1))
                      (local.set $l13
                        (local.get $l8))
                      (local.set $l22
                        (local.get $l9))
                      (local.set $l17
                        (local.get $l23))
                      (br $B7))
                    (local.set $l22
                      (local.get $l9)))
                  (br_if $B3
                    (i32.gt_s
                      (local.tee $l18
                        (select
                          (local.get $l20)
                          (local.tee $p1
                            (i32.sub
                              (local.get $l22)
                              (local.get $l13)))
                          (i32.gt_s
                            (local.get $l20)
                            (local.get $p1))))
                      (i32.xor
                        (local.get $l16)
                        (i32.const 2147483647))))
                  (local.set $l22
                    (i32.const 61))
                  (br_if $B2
                    (i32.gt_s
                      (local.tee $l12
                        (select
                          (local.get $l19)
                          (local.tee $l15
                            (i32.add
                              (local.get $l16)
                              (local.get $l18)))
                          (i32.gt_s
                            (local.get $l19)
                            (local.get $l15))))
                      (local.get $l14)))
                  (call $f31
                    (local.get $p0)
                    (i32.const 32)
                    (local.get $l12)
                    (local.get $l15)
                    (local.get $l17))
                  (call $f25
                    (local.get $p0)
                    (local.get $l24)
                    (local.get $l16))
                  (call $f31
                    (local.get $p0)
                    (i32.const 48)
                    (local.get $l12)
                    (local.get $l15)
                    (i32.xor
                      (local.get $l17)
                      (i32.const 65536)))
                  (call $f31
                    (local.get $p0)
                    (i32.const 48)
                    (local.get $l18)
                    (local.get $p1)
                    (i32.const 0))
                  (call $f25
                    (local.get $p0)
                    (local.get $l13)
                    (local.get $p1))
                  (call $f31
                    (local.get $p0)
                    (i32.const 32)
                    (local.get $l12)
                    (local.get $l15)
                    (i32.xor
                      (local.get $l17)
                      (i32.const 8192)))
                  (local.set $p1
                    (i32.load offset=60
                      (local.get $l7)))
                  (br $L5))))
            (local.set $l11
              (i32.const 0))
            (br $B0))
          (local.set $l22
            (i32.const 61)))
        (i32.store
          (call $f19)
          (local.get $l22)))
      (local.set $l11
        (i32.const -1)))
    (global.set $g0
      (i32.add
        (local.get $l7)
        (i32.const 64)))
    (local.get $l11))
  (func $f25 (type $t7) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (block $B0
      (br_if $B0
        (i32.and
          (i32.load8_u
            (local.get $p0))
          (i32.const 32)))
      (drop
        (call $f22
          (local.get $p1)
          (local.get $p2)
          (local.get $p0)))))
  (func $f26 (type $t2) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32)
    (local.set $l1
      (i32.const 0))
    (block $B0
      (br_if $B0
        (i32.le_u
          (local.tee $l3
            (i32.add
              (i32.load8_s
                (local.tee $l2
                  (i32.load
                    (local.get $p0))))
              (i32.const -48)))
          (i32.const 9)))
      (return
        (i32.const 0)))
    (loop $L1
      (local.set $l4
        (i32.const -1))
      (block $B2
        (br_if $B2
          (i32.gt_u
            (local.get $l1)
            (i32.const 214748364)))
        (local.set $l4
          (select
            (i32.const -1)
            (i32.add
              (local.get $l3)
              (local.tee $l1
                (i32.mul
                  (local.get $l1)
                  (i32.const 10))))
            (i32.gt_u
              (local.get $l3)
              (i32.xor
                (local.get $l1)
                (i32.const 2147483647))))))
      (i32.store
        (local.get $p0)
        (local.tee $l3
          (i32.add
            (local.get $l2)
            (i32.const 1))))
      (local.set $l5
        (i32.load8_s offset=1
          (local.get $l2)))
      (local.set $l1
        (local.get $l4))
      (local.set $l2
        (local.get $l3))
      (br_if $L1
        (i32.lt_u
          (local.tee $l3
            (i32.add
              (local.get $l5)
              (i32.const -48)))
          (i32.const 10))))
    (local.get $l4))
  (func $f27 (type $t16) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32)
    (block $B0
      (block $B1
        (block $B2
          (block $B3
            (block $B4
              (block $B5
                (block $B6
                  (block $B7
                    (block $B8
                      (block $B9
                        (block $B10
                          (block $B11
                            (block $B12
                              (block $B13
                                (block $B14
                                  (block $B15
                                    (block $B16
                                      (block $B17
                                        (block $B18
                                          (br_table $B18 $B17 $B16 $B13 $B15 $B14 $B12 $B11 $B10 $B9 $B8 $B7 $B6 $B5 $B4 $B3 $B2 $B1 $B0
                                            (i32.add
                                              (local.get $p1)
                                              (i32.const -9))))
                                        (i32.store
                                          (local.get $p2)
                                          (i32.add
                                            (local.tee $p1
                                              (i32.load
                                                (local.get $p2)))
                                            (i32.const 4)))
                                        (i32.store
                                          (local.get $p0)
                                          (i32.load
                                            (local.get $p1)))
                                        (return))
                                      (i32.store
                                        (local.get $p2)
                                        (i32.add
                                          (local.tee $p1
                                            (i32.load
                                              (local.get $p2)))
                                          (i32.const 4)))
                                      (i64.store
                                        (local.get $p0)
                                        (i64.load32_s
                                          (local.get $p1)))
                                      (return))
                                    (i32.store
                                      (local.get $p2)
                                      (i32.add
                                        (local.tee $p1
                                          (i32.load
                                            (local.get $p2)))
                                        (i32.const 4)))
                                    (i64.store
                                      (local.get $p0)
                                      (i64.load32_u
                                        (local.get $p1)))
                                    (return))
                                  (i32.store
                                    (local.get $p2)
                                    (i32.add
                                      (local.tee $p1
                                        (i32.load
                                          (local.get $p2)))
                                      (i32.const 4)))
                                  (i64.store
                                    (local.get $p0)
                                    (i64.load32_s
                                      (local.get $p1)))
                                  (return))
                                (i32.store
                                  (local.get $p2)
                                  (i32.add
                                    (local.tee $p1
                                      (i32.load
                                        (local.get $p2)))
                                    (i32.const 4)))
                                (i64.store
                                  (local.get $p0)
                                  (i64.load32_u
                                    (local.get $p1)))
                                (return))
                              (i32.store
                                (local.get $p2)
                                (i32.add
                                  (local.tee $p1
                                    (i32.and
                                      (i32.add
                                        (i32.load
                                          (local.get $p2))
                                        (i32.const 7))
                                      (i32.const -8)))
                                  (i32.const 8)))
                              (i64.store
                                (local.get $p0)
                                (i64.load
                                  (local.get $p1)))
                              (return))
                            (i32.store
                              (local.get $p2)
                              (i32.add
                                (local.tee $p1
                                  (i32.load
                                    (local.get $p2)))
                                (i32.const 4)))
                            (i64.store
                              (local.get $p0)
                              (i64.load16_s
                                (local.get $p1)))
                            (return))
                          (i32.store
                            (local.get $p2)
                            (i32.add
                              (local.tee $p1
                                (i32.load
                                  (local.get $p2)))
                              (i32.const 4)))
                          (i64.store
                            (local.get $p0)
                            (i64.load16_u
                              (local.get $p1)))
                          (return))
                        (i32.store
                          (local.get $p2)
                          (i32.add
                            (local.tee $p1
                              (i32.load
                                (local.get $p2)))
                            (i32.const 4)))
                        (i64.store
                          (local.get $p0)
                          (i64.load8_s
                            (local.get $p1)))
                        (return))
                      (i32.store
                        (local.get $p2)
                        (i32.add
                          (local.tee $p1
                            (i32.load
                              (local.get $p2)))
                          (i32.const 4)))
                      (i64.store
                        (local.get $p0)
                        (i64.load8_u
                          (local.get $p1)))
                      (return))
                    (i32.store
                      (local.get $p2)
                      (i32.add
                        (local.tee $p1
                          (i32.and
                            (i32.add
                              (i32.load
                                (local.get $p2))
                              (i32.const 7))
                            (i32.const -8)))
                        (i32.const 8)))
                    (i64.store
                      (local.get $p0)
                      (i64.load
                        (local.get $p1)))
                    (return))
                  (i32.store
                    (local.get $p2)
                    (i32.add
                      (local.tee $p1
                        (i32.load
                          (local.get $p2)))
                      (i32.const 4)))
                  (i64.store
                    (local.get $p0)
                    (i64.load32_u
                      (local.get $p1)))
                  (return))
                (i32.store
                  (local.get $p2)
                  (i32.add
                    (local.tee $p1
                      (i32.and
                        (i32.add
                          (i32.load
                            (local.get $p2))
                          (i32.const 7))
                        (i32.const -8)))
                    (i32.const 8)))
                (i64.store
                  (local.get $p0)
                  (i64.load
                    (local.get $p1)))
                (return))
              (i32.store
                (local.get $p2)
                (i32.add
                  (local.tee $p1
                    (i32.and
                      (i32.add
                        (i32.load
                          (local.get $p2))
                        (i32.const 7))
                      (i32.const -8)))
                  (i32.const 8)))
              (i64.store
                (local.get $p0)
                (i64.load
                  (local.get $p1)))
              (return))
            (i32.store
              (local.get $p2)
              (i32.add
                (local.tee $p1
                  (i32.load
                    (local.get $p2)))
                (i32.const 4)))
            (i64.store
              (local.get $p0)
              (i64.load32_s
                (local.get $p1)))
            (return))
          (i32.store
            (local.get $p2)
            (i32.add
              (local.tee $p1
                (i32.load
                  (local.get $p2)))
              (i32.const 4)))
          (i64.store
            (local.get $p0)
            (i64.load32_u
              (local.get $p1)))
          (return))
        (i32.store
          (local.get $p2)
          (i32.add
            (local.tee $p1
              (i32.and
                (i32.add
                  (i32.load
                    (local.get $p2))
                  (i32.const 7))
                (i32.const -8)))
            (i32.const 8)))
        (f64.store
          (local.get $p0)
          (f64.load
            (local.get $p1)))
        (return))
      (call_indirect $__indirect_function_table (type $t10)
        (local.get $p0)
        (local.get $p2)
        (local.get $p3))))
  (func $f28 (type $t17) (param $p0 i64) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32)
    (block $B0
      (br_if $B0
        (i64.eqz
          (local.get $p0)))
      (loop $L1
        (i32.store8
          (local.tee $p1
            (i32.add
              (local.get $p1)
              (i32.const -1)))
          (i32.or
            (i32.load8_u
              (i32.add
                (i32.and
                  (i32.wrap_i64
                    (local.get $p0))
                  (i32.const 15))
                (i32.const 66080)))
            (local.get $p2)))
        (local.set $l3
          (i64.gt_u
            (local.get $p0)
            (i64.const 15)))
        (local.set $p0
          (i64.shr_u
            (local.get $p0)
            (i64.const 4)))
        (br_if $L1
          (local.get $l3))))
    (local.get $p1))
  (func $f29 (type $t11) (param $p0 i64) (param $p1 i32) (result i32)
    (local $l2 i32)
    (block $B0
      (br_if $B0
        (i64.eqz
          (local.get $p0)))
      (loop $L1
        (i32.store8
          (local.tee $p1
            (i32.add
              (local.get $p1)
              (i32.const -1)))
          (i32.or
            (i32.and
              (i32.wrap_i64
                (local.get $p0))
              (i32.const 7))
            (i32.const 48)))
        (local.set $l2
          (i64.gt_u
            (local.get $p0)
            (i64.const 7)))
        (local.set $p0
          (i64.shr_u
            (local.get $p0)
            (i64.const 3)))
        (br_if $L1
          (local.get $l2))))
    (local.get $p1))
  (func $f30 (type $t11) (param $p0 i64) (param $p1 i32) (result i32)
    (local $l2 i64) (local $l3 i32) (local $l4 i32) (local $l5 i32)
    (block $B0
      (block $B1
        (br_if $B1
          (i64.ge_u
            (local.get $p0)
            (i64.const 4294967296)))
        (local.set $l2
          (local.get $p0))
        (br $B0))
      (loop $L2
        (i32.store8
          (local.tee $p1
            (i32.add
              (local.get $p1)
              (i32.const -1)))
          (i32.or
            (i32.wrap_i64
              (i64.sub
                (local.get $p0)
                (i64.mul
                  (local.tee $l2
                    (i64.div_u
                      (local.get $p0)
                      (i64.const 10)))
                  (i64.const 10))))
            (i32.const 48)))
        (local.set $l3
          (i64.gt_u
            (local.get $p0)
            (i64.const 42949672959)))
        (local.set $p0
          (local.get $l2))
        (br_if $L2
          (local.get $l3))))
    (block $B3
      (br_if $B3
        (i64.eqz
          (local.get $l2)))
      (local.set $l3
        (i32.wrap_i64
          (local.get $l2)))
      (loop $L4
        (i32.store8
          (local.tee $p1
            (i32.add
              (local.get $p1)
              (i32.const -1)))
          (i32.or
            (i32.sub
              (local.get $l3)
              (i32.mul
                (local.tee $l4
                  (i32.div_u
                    (local.get $l3)
                    (i32.const 10)))
                (i32.const 10)))
            (i32.const 48)))
        (local.set $l5
          (i32.gt_u
            (local.get $l3)
            (i32.const 9)))
        (local.set $l3
          (local.get $l4))
        (br_if $L4
          (local.get $l5))))
    (local.get $p1))
  (func $f31 (type $t18) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (param $p4 i32)
    (local $l5 i32)
    (global.set $g0
      (local.tee $l5
        (i32.sub
          (global.get $g0)
          (i32.const 256))))
    (block $B0
      (br_if $B0
        (i32.le_s
          (local.get $p2)
          (local.get $p3)))
      (br_if $B0
        (i32.and
          (local.get $p4)
          (i32.const 73728)))
      (drop
        (call $f9
          (local.get $l5)
          (local.get $p1)
          (select
            (local.tee $p3
              (i32.sub
                (local.get $p2)
                (local.get $p3)))
            (i32.const 256)
            (local.tee $p2
              (i32.lt_u
                (local.get $p3)
                (i32.const 256))))))
      (block $B1
        (br_if $B1
          (local.get $p2))
        (loop $L2
          (call $f25
            (local.get $p0)
            (local.get $l5)
            (i32.const 256))
          (br_if $L2
            (i32.gt_u
              (local.tee $p3
                (i32.add
                  (local.get $p3)
                  (i32.const -256)))
              (i32.const 255)))))
      (call $f25
        (local.get $p0)
        (local.get $l5)
        (local.get $p3)))
    (global.set $g0
      (i32.add
        (local.get $l5)
        (i32.const 256))))
  (func $f32 (type $t1) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (call $f23
      (local.get $p0)
      (local.get $p1)
      (local.get $p2)
      (i32.const 4)
      (i32.const 5)))
  (func $f33 (type $t9) (param $p0 i32) (param $p1 f64) (param $p2 i32) (param $p3 i32) (param $p4 i32) (param $p5 i32) (result i32)
    (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32) (local $l11 i32) (local $l12 i32) (local $l13 i32) (local $l14 i32) (local $l15 i32) (local $l16 i32) (local $l17 i32) (local $l18 i32) (local $l19 i32) (local $l20 i32) (local $l21 i32) (local $l22 i32) (local $l23 i32) (local $l24 i64) (local $l25 i64) (local $l26 i64) (local $l27 f64)
    (global.set $g0
      (local.tee $l6
        (i32.sub
          (global.get $g0)
          (i32.const 560))))
    (local.set $l7
      (i32.const 0))
    (i32.store offset=44
      (local.get $l6)
      (i32.const 0))
    (block $B0
      (block $B1
        (br_if $B1
          (i64.gt_s
            (local.tee $l24
              (call $f35
                (local.get $p1)))
            (i64.const -1)))
        (local.set $l8
          (i32.const 1))
        (local.set $l9
          (i32.const 65546))
        (local.set $l24
          (call $f35
            (local.tee $p1
              (f64.neg
                (local.get $p1)))))
        (br $B0))
      (block $B2
        (br_if $B2
          (i32.eqz
            (i32.and
              (local.get $p4)
              (i32.const 2048))))
        (local.set $l8
          (i32.const 1))
        (local.set $l9
          (i32.const 65549))
        (br $B0))
      (local.set $l9
        (select
          (i32.const 65552)
          (i32.const 65547)
          (local.tee $l8
            (i32.and
              (local.get $p4)
              (i32.const 1)))))
      (local.set $l7
        (i32.eqz
          (local.get $l8))))
    (block $B3
      (block $B4
        (br_if $B4
          (i64.ne
            (i64.and
              (local.get $l24)
              (i64.const 9218868437227405312))
            (i64.const 9218868437227405312)))
        (call $f31
          (local.get $p0)
          (i32.const 32)
          (local.get $p2)
          (local.tee $l10
            (i32.add
              (local.get $l8)
              (i32.const 3)))
          (i32.and
            (local.get $p4)
            (i32.const -65537)))
        (call $f25
          (local.get $p0)
          (local.get $l9)
          (local.get $l8))
        (call $f25
          (local.get $p0)
          (select
            (select
              (i32.const 65565)
              (i32.const 65573)
              (local.tee $l11
                (i32.and
                  (local.get $p5)
                  (i32.const 32))))
            (select
              (i32.const 65569)
              (i32.const 65577)
              (local.get $l11))
            (f64.ne
              (local.get $p1)
              (local.get $p1)))
          (i32.const 3))
        (call $f31
          (local.get $p0)
          (i32.const 32)
          (local.get $p2)
          (local.get $l10)
          (i32.xor
            (local.get $p4)
            (i32.const 8192)))
        (local.set $l12
          (select
            (local.get $l10)
            (local.get $p2)
            (i32.gt_s
              (local.get $l10)
              (local.get $p2))))
        (br $B3))
      (local.set $l13
        (i32.add
          (local.get $l6)
          (i32.const 16)))
      (block $B5
        (block $B6
          (block $B7
            (block $B8
              (br_if $B8
                (f64.eq
                  (local.tee $p1
                    (f64.add
                      (local.tee $p1
                        (call $f20
                          (local.get $p1)
                          (i32.add
                            (local.get $l6)
                            (i32.const 44))))
                      (local.get $p1)))
                  (f64.const 0x0p+0 (;=0;))))
              (i32.store offset=44
                (local.get $l6)
                (i32.add
                  (local.tee $l10
                    (i32.load offset=44
                      (local.get $l6)))
                  (i32.const -1)))
              (br_if $B7
                (i32.ne
                  (local.tee $l14
                    (i32.or
                      (local.get $p5)
                      (i32.const 32)))
                  (i32.const 97)))
              (br $B5))
            (br_if $B5
              (i32.eq
                (local.tee $l14
                  (i32.or
                    (local.get $p5)
                    (i32.const 32)))
                (i32.const 97)))
            (local.set $l15
              (select
                (i32.const 6)
                (local.get $p3)
                (i32.lt_s
                  (local.get $p3)
                  (i32.const 0))))
            (local.set $l16
              (i32.load offset=44
                (local.get $l6)))
            (br $B6))
          (i32.store offset=44
            (local.get $l6)
            (local.tee $l16
              (i32.add
                (local.get $l10)
                (i32.const -29))))
          (local.set $l15
            (select
              (i32.const 6)
              (local.get $p3)
              (i32.lt_s
                (local.get $p3)
                (i32.const 0))))
          (local.set $p1
            (f64.mul
              (local.get $p1)
              (f64.const 0x1p+28 (;=2.68435e+08;)))))
        (local.set $l11
          (local.tee $l17
            (i32.add
              (i32.add
                (local.get $l6)
                (i32.const 48))
              (select
                (i32.const 0)
                (i32.const 288)
                (i32.lt_s
                  (local.get $l16)
                  (i32.const 0))))))
        (loop $L9
          (block $B10
            (block $B11
              (br_if $B11
                (i32.eqz
                  (i32.and
                    (f64.lt
                      (local.get $p1)
                      (f64.const 0x1p+32 (;=4.29497e+09;)))
                    (f64.ge
                      (local.get $p1)
                      (f64.const 0x0p+0 (;=0;))))))
              (local.set $l10
                (i32.trunc_f64_u
                  (local.get $p1)))
              (br $B10))
            (local.set $l10
              (i32.const 0)))
          (i32.store
            (local.get $l11)
            (local.get $l10))
          (local.set $l11
            (i32.add
              (local.get $l11)
              (i32.const 4)))
          (br_if $L9
            (f64.ne
              (local.tee $p1
                (f64.mul
                  (f64.sub
                    (local.get $p1)
                    (f64.convert_i32_u
                      (local.get $l10)))
                  (f64.const 0x1.dcd65p+29 (;=1e+09;))))
              (f64.const 0x0p+0 (;=0;)))))
        (block $B12
          (block $B13
            (br_if $B13
              (i32.ge_s
                (local.get $l16)
                (i32.const 1)))
            (local.set $p3
              (local.get $l16))
            (local.set $l10
              (local.get $l11))
            (local.set $l18
              (local.get $l17))
            (br $B12))
          (local.set $l18
            (local.get $l17))
          (local.set $p3
            (local.get $l16))
          (loop $L14
            (local.set $p3
              (select
                (local.get $p3)
                (i32.const 29)
                (i32.lt_u
                  (local.get $p3)
                  (i32.const 29))))
            (block $B15
              (br_if $B15
                (i32.lt_u
                  (local.tee $l10
                    (i32.add
                      (local.get $l11)
                      (i32.const -4)))
                  (local.get $l18)))
              (local.set $l25
                (i64.extend_i32_u
                  (local.get $p3)))
              (local.set $l24
                (i64.const 0))
              (loop $L16
                (i64.store32
                  (local.get $l10)
                  (i64.sub
                    (local.tee $l26
                      (i64.add
                        (i64.shl
                          (i64.load32_u
                            (local.get $l10))
                          (local.get $l25))
                        (i64.and
                          (local.get $l24)
                          (i64.const 4294967295))))
                    (i64.mul
                      (local.tee $l24
                        (i64.div_u
                          (local.get $l26)
                          (i64.const 1000000000)))
                      (i64.const 1000000000))))
                (br_if $L16
                  (i32.ge_u
                    (local.tee $l10
                      (i32.add
                        (local.get $l10)
                        (i32.const -4)))
                    (local.get $l18))))
              (br_if $B15
                (i64.lt_u
                  (local.get $l26)
                  (i64.const 1000000000)))
              (i64.store32
                (local.tee $l18
                  (i32.add
                    (local.get $l18)
                    (i32.const -4)))
                (local.get $l24)))
            (block $B17
              (loop $L18
                (br_if $B17
                  (i32.le_u
                    (local.tee $l10
                      (local.get $l11))
                    (local.get $l18)))
                (br_if $L18
                  (i32.eqz
                    (i32.load
                      (local.tee $l11
                        (i32.add
                          (local.get $l10)
                          (i32.const -4))))))))
            (i32.store offset=44
              (local.get $l6)
              (local.tee $p3
                (i32.sub
                  (i32.load offset=44
                    (local.get $l6))
                  (local.get $p3))))
            (local.set $l11
              (local.get $l10))
            (br_if $L14
              (i32.gt_s
                (local.get $p3)
                (i32.const 0)))))
        (block $B19
          (br_if $B19
            (i32.gt_s
              (local.get $p3)
              (i32.const -1)))
          (local.set $l19
            (i32.add
              (i32.div_u
                (i32.add
                  (local.get $l15)
                  (i32.const 25))
                (i32.const 9))
              (i32.const 1)))
          (local.set $l20
            (i32.eq
              (local.get $l14)
              (i32.const 102)))
          (loop $L20
            (local.set $l21
              (select
                (local.tee $l11
                  (i32.sub
                    (i32.const 0)
                    (local.get $p3)))
                (i32.const 9)
                (i32.lt_u
                  (local.get $l11)
                  (i32.const 9))))
            (block $B21
              (block $B22
                (br_if $B22
                  (i32.lt_u
                    (local.get $l18)
                    (local.get $l10)))
                (local.set $l11
                  (i32.shl
                    (i32.eqz
                      (i32.load
                        (local.get $l18)))
                    (i32.const 2)))
                (br $B21))
              (local.set $l22
                (i32.shr_u
                  (i32.const 1000000000)
                  (local.get $l21)))
              (local.set $l23
                (i32.xor
                  (i32.shl
                    (i32.const -1)
                    (local.get $l21))
                  (i32.const -1)))
              (local.set $p3
                (i32.const 0))
              (local.set $l11
                (local.get $l18))
              (loop $L23
                (i32.store
                  (local.get $l11)
                  (i32.add
                    (i32.shr_u
                      (local.tee $l12
                        (i32.load
                          (local.get $l11)))
                      (local.get $l21))
                    (local.get $p3)))
                (local.set $p3
                  (i32.mul
                    (i32.and
                      (local.get $l12)
                      (local.get $l23))
                    (local.get $l22)))
                (br_if $L23
                  (i32.lt_u
                    (local.tee $l11
                      (i32.add
                        (local.get $l11)
                        (i32.const 4)))
                    (local.get $l10))))
              (local.set $l11
                (i32.shl
                  (i32.eqz
                    (i32.load
                      (local.get $l18)))
                  (i32.const 2)))
              (br_if $B21
                (i32.eqz
                  (local.get $p3)))
              (i32.store
                (local.get $l10)
                (local.get $p3))
              (local.set $l10
                (i32.add
                  (local.get $l10)
                  (i32.const 4))))
            (i32.store offset=44
              (local.get $l6)
              (local.tee $p3
                (i32.add
                  (i32.load offset=44
                    (local.get $l6))
                  (local.get $l21))))
            (local.set $l10
              (select
                (i32.add
                  (local.tee $l11
                    (select
                      (local.get $l17)
                      (local.tee $l18
                        (i32.add
                          (local.get $l18)
                          (local.get $l11)))
                      (local.get $l20)))
                  (i32.shl
                    (local.get $l19)
                    (i32.const 2)))
                (local.get $l10)
                (i32.gt_s
                  (i32.shr_s
                    (i32.sub
                      (local.get $l10)
                      (local.get $l11))
                    (i32.const 2))
                  (local.get $l19))))
            (br_if $L20
              (i32.lt_s
                (local.get $p3)
                (i32.const 0)))))
        (local.set $p3
          (i32.const 0))
        (block $B24
          (br_if $B24
            (i32.ge_u
              (local.get $l18)
              (local.get $l10)))
          (local.set $p3
            (i32.mul
              (i32.shr_s
                (i32.sub
                  (local.get $l17)
                  (local.get $l18))
                (i32.const 2))
              (i32.const 9)))
          (local.set $l11
            (i32.const 10))
          (br_if $B24
            (i32.lt_u
              (local.tee $l12
                (i32.load
                  (local.get $l18)))
              (i32.const 10)))
          (loop $L25
            (local.set $p3
              (i32.add
                (local.get $p3)
                (i32.const 1)))
            (br_if $L25
              (i32.ge_u
                (local.get $l12)
                (local.tee $l11
                  (i32.mul
                    (local.get $l11)
                    (i32.const 10)))))))
        (block $B26
          (br_if $B26
            (i32.ge_s
              (local.tee $l11
                (i32.sub
                  (i32.sub
                    (local.get $l15)
                    (select
                      (i32.const 0)
                      (local.get $p3)
                      (i32.eq
                        (local.get $l14)
                        (i32.const 102))))
                  (i32.and
                    (i32.ne
                      (local.get $l15)
                      (i32.const 0))
                    (i32.eq
                      (local.get $l14)
                      (i32.const 103)))))
              (i32.add
                (i32.mul
                  (i32.shr_s
                    (i32.sub
                      (local.get $l10)
                      (local.get $l17))
                    (i32.const 2))
                  (i32.const 9))
                (i32.const -9))))
          (local.set $l21
            (i32.add
              (i32.add
                (i32.add
                  (local.get $l6)
                  (i32.const 48))
                (select
                  (i32.const -4092)
                  (i32.const -3804)
                  (i32.lt_s
                    (local.get $l16)
                    (i32.const 0))))
              (i32.shl
                (local.tee $l22
                  (i32.div_s
                    (local.tee $l12
                      (i32.add
                        (local.get $l11)
                        (i32.const 9216)))
                    (i32.const 9)))
                (i32.const 2))))
          (local.set $l11
            (i32.const 10))
          (block $B27
            (br_if $B27
              (i32.gt_s
                (local.tee $l12
                  (i32.sub
                    (local.get $l12)
                    (i32.mul
                      (local.get $l22)
                      (i32.const 9))))
                (i32.const 7)))
            (loop $L28
              (local.set $l11
                (i32.mul
                  (local.get $l11)
                  (i32.const 10)))
              (br_if $L28
                (i32.ne
                  (local.tee $l12
                    (i32.add
                      (local.get $l12)
                      (i32.const 1)))
                  (i32.const 8)))))
          (local.set $l23
            (i32.add
              (local.get $l21)
              (i32.const 4)))
          (block $B29
            (block $B30
              (br_if $B30
                (local.tee $l22
                  (i32.sub
                    (local.tee $l12
                      (i32.load
                        (local.get $l21)))
                    (i32.mul
                      (local.tee $l19
                        (i32.div_u
                          (local.get $l12)
                          (local.get $l11)))
                      (local.get $l11)))))
              (br_if $B29
                (i32.eq
                  (local.get $l23)
                  (local.get $l10))))
            (block $B31
              (block $B32
                (br_if $B32
                  (i32.and
                    (local.get $l19)
                    (i32.const 1)))
                (local.set $p1
                  (f64.const 0x1p+53 (;=9.0072e+15;)))
                (br_if $B31
                  (i32.ne
                    (local.get $l11)
                    (i32.const 1000000000)))
                (br_if $B31
                  (i32.le_u
                    (local.get $l21)
                    (local.get $l18)))
                (br_if $B31
                  (i32.eqz
                    (i32.and
                      (i32.load8_u
                        (i32.add
                          (local.get $l21)
                          (i32.const -4)))
                      (i32.const 1)))))
              (local.set $p1
                (f64.const 0x1.0000000000001p+53 (;=9.0072e+15;))))
            (local.set $l27
              (select
                (f64.const 0x1p-1 (;=0.5;))
                (select
                  (select
                    (f64.const 0x1p+0 (;=1;))
                    (f64.const 0x1.8p+0 (;=1.5;))
                    (i32.eq
                      (local.get $l23)
                      (local.get $l10)))
                  (f64.const 0x1.8p+0 (;=1.5;))
                  (i32.eq
                    (local.get $l22)
                    (local.tee $l23
                      (i32.shr_u
                        (local.get $l11)
                        (i32.const 1)))))
                (i32.lt_u
                  (local.get $l22)
                  (local.get $l23))))
            (block $B33
              (br_if $B33
                (local.get $l7))
              (br_if $B33
                (i32.ne
                  (i32.load8_u
                    (local.get $l9))
                  (i32.const 45)))
              (local.set $l27
                (f64.neg
                  (local.get $l27)))
              (local.set $p1
                (f64.neg
                  (local.get $p1))))
            (i32.store
              (local.get $l21)
              (local.tee $l12
                (i32.sub
                  (local.get $l12)
                  (local.get $l22))))
            (br_if $B29
              (f64.eq
                (f64.add
                  (local.get $p1)
                  (local.get $l27))
                (local.get $p1)))
            (i32.store
              (local.get $l21)
              (local.tee $l11
                (i32.add
                  (local.get $l12)
                  (local.get $l11))))
            (block $B34
              (br_if $B34
                (i32.lt_u
                  (local.get $l11)
                  (i32.const 1000000000)))
              (loop $L35
                (i32.store
                  (local.get $l21)
                  (i32.const 0))
                (block $B36
                  (br_if $B36
                    (i32.ge_u
                      (local.tee $l21
                        (i32.add
                          (local.get $l21)
                          (i32.const -4)))
                      (local.get $l18)))
                  (i32.store
                    (local.tee $l18
                      (i32.add
                        (local.get $l18)
                        (i32.const -4)))
                    (i32.const 0)))
                (i32.store
                  (local.get $l21)
                  (local.tee $l11
                    (i32.add
                      (i32.load
                        (local.get $l21))
                      (i32.const 1))))
                (br_if $L35
                  (i32.gt_u
                    (local.get $l11)
                    (i32.const 999999999)))))
            (local.set $p3
              (i32.mul
                (i32.shr_s
                  (i32.sub
                    (local.get $l17)
                    (local.get $l18))
                  (i32.const 2))
                (i32.const 9)))
            (local.set $l11
              (i32.const 10))
            (br_if $B29
              (i32.lt_u
                (local.tee $l12
                  (i32.load
                    (local.get $l18)))
                (i32.const 10)))
            (loop $L37
              (local.set $p3
                (i32.add
                  (local.get $p3)
                  (i32.const 1)))
              (br_if $L37
                (i32.ge_u
                  (local.get $l12)
                  (local.tee $l11
                    (i32.mul
                      (local.get $l11)
                      (i32.const 10)))))))
          (local.set $l10
            (select
              (local.tee $l11
                (i32.add
                  (local.get $l21)
                  (i32.const 4)))
              (local.get $l10)
              (i32.gt_u
                (local.get $l10)
                (local.get $l11)))))
        (block $B38
          (loop $L39
            (br_if $B38
              (local.tee $l12
                (i32.le_u
                  (local.tee $l11
                    (local.get $l10))
                  (local.get $l18))))
            (br_if $L39
              (i32.eqz
                (i32.load
                  (local.tee $l10
                    (i32.add
                      (local.get $l11)
                      (i32.const -4))))))))
        (block $B40
          (block $B41
            (br_if $B41
              (i32.eq
                (local.get $l14)
                (i32.const 103)))
            (local.set $l21
              (i32.and
                (local.get $p4)
                (i32.const 8)))
            (br $B40))
          (local.set $l15
            (i32.add
              (select
                (i32.xor
                  (local.get $p3)
                  (i32.const -1))
                (i32.const -1)
                (local.tee $l21
                  (i32.and
                    (i32.gt_s
                      (local.tee $l10
                        (select
                          (local.get $l15)
                          (i32.const 1)
                          (local.get $l15)))
                      (local.get $p3))
                    (i32.gt_s
                      (local.get $p3)
                      (i32.const -5)))))
              (local.get $l10)))
          (local.set $p5
            (i32.add
              (select
                (i32.const -1)
                (i32.const -2)
                (local.get $l21))
              (local.get $p5)))
          (br_if $B40
            (local.tee $l21
              (i32.and
                (local.get $p4)
                (i32.const 8))))
          (local.set $l10
            (i32.const -9))
          (block $B42
            (br_if $B42
              (local.get $l12))
            (br_if $B42
              (i32.eqz
                (local.tee $l21
                  (i32.load
                    (i32.add
                      (local.get $l11)
                      (i32.const -4))))))
            (local.set $l12
              (i32.const 10))
            (local.set $l10
              (i32.const 0))
            (br_if $B42
              (i32.rem_u
                (local.get $l21)
                (i32.const 10)))
            (loop $L43
              (local.set $l10
                (i32.add
                  (local.tee $l22
                    (local.get $l10))
                  (i32.const 1)))
              (br_if $L43
                (i32.eqz
                  (i32.rem_u
                    (local.get $l21)
                    (local.tee $l12
                      (i32.mul
                        (local.get $l12)
                        (i32.const 10)))))))
            (local.set $l10
              (i32.xor
                (local.get $l22)
                (i32.const -1))))
          (local.set $l12
            (i32.mul
              (i32.shr_s
                (i32.sub
                  (local.get $l11)
                  (local.get $l17))
                (i32.const 2))
              (i32.const 9)))
          (block $B44
            (br_if $B44
              (i32.ne
                (i32.and
                  (local.get $p5)
                  (i32.const -33))
                (i32.const 70)))
            (local.set $l21
              (i32.const 0))
            (local.set $l15
              (select
                (local.get $l15)
                (local.tee $l10
                  (select
                    (local.tee $l10
                      (i32.add
                        (i32.add
                          (local.get $l12)
                          (local.get $l10))
                        (i32.const -9)))
                    (i32.const 0)
                    (i32.gt_s
                      (local.get $l10)
                      (i32.const 0))))
                (i32.lt_s
                  (local.get $l15)
                  (local.get $l10))))
            (br $B40))
          (local.set $l21
            (i32.const 0))
          (local.set $l15
            (select
              (local.get $l15)
              (local.tee $l10
                (select
                  (local.tee $l10
                    (i32.add
                      (i32.add
                        (i32.add
                          (local.get $p3)
                          (local.get $l12))
                        (local.get $l10))
                      (i32.const -9)))
                  (i32.const 0)
                  (i32.gt_s
                    (local.get $l10)
                    (i32.const 0))))
              (i32.lt_s
                (local.get $l15)
                (local.get $l10)))))
        (local.set $l12
          (i32.const -1))
        (br_if $B3
          (i32.gt_s
            (local.get $l15)
            (select
              (i32.const 2147483645)
              (i32.const 2147483646)
              (local.tee $l22
                (i32.or
                  (local.get $l15)
                  (local.get $l21))))))
        (local.set $l23
          (i32.add
            (i32.add
              (local.get $l15)
              (i32.ne
                (local.get $l22)
                (i32.const 0)))
            (i32.const 1)))
        (block $B45
          (block $B46
            (br_if $B46
              (i32.ne
                (local.tee $l20
                  (i32.and
                    (local.get $p5)
                    (i32.const -33)))
                (i32.const 70)))
            (br_if $B3
              (i32.gt_s
                (local.get $p3)
                (i32.xor
                  (local.get $l23)
                  (i32.const 2147483647))))
            (local.set $l10
              (select
                (local.get $p3)
                (i32.const 0)
                (i32.gt_s
                  (local.get $p3)
                  (i32.const 0))))
            (br $B45))
          (block $B47
            (br_if $B47
              (i32.gt_s
                (i32.sub
                  (local.get $l13)
                  (local.tee $l10
                    (call $f30
                      (i64.extend_i32_u
                        (i32.sub
                          (i32.xor
                            (local.get $p3)
                            (local.tee $l10
                              (i32.shr_s
                                (local.get $p3)
                                (i32.const 31))))
                          (local.get $l10)))
                      (local.get $l13))))
                (i32.const 1)))
            (loop $L48
              (i32.store8
                (local.tee $l10
                  (i32.add
                    (local.get $l10)
                    (i32.const -1)))
                (i32.const 48))
              (br_if $L48
                (i32.lt_s
                  (i32.sub
                    (local.get $l13)
                    (local.get $l10))
                  (i32.const 2)))))
          (i32.store8
            (local.tee $l19
              (i32.add
                (local.get $l10)
                (i32.const -2)))
            (local.get $p5))
          (local.set $l12
            (i32.const -1))
          (i32.store8
            (i32.add
              (local.get $l10)
              (i32.const -1))
            (select
              (i32.const 45)
              (i32.const 43)
              (i32.lt_s
                (local.get $p3)
                (i32.const 0))))
          (br_if $B3
            (i32.gt_s
              (local.tee $l10
                (i32.sub
                  (local.get $l13)
                  (local.get $l19)))
              (i32.xor
                (local.get $l23)
                (i32.const 2147483647)))))
        (local.set $l12
          (i32.const -1))
        (br_if $B3
          (i32.gt_s
            (local.tee $l10
              (i32.add
                (local.get $l10)
                (local.get $l23)))
            (i32.xor
              (local.get $l8)
              (i32.const 2147483647))))
        (call $f31
          (local.get $p0)
          (i32.const 32)
          (local.get $p2)
          (local.tee $l23
            (i32.add
              (local.get $l10)
              (local.get $l8)))
          (local.get $p4))
        (call $f25
          (local.get $p0)
          (local.get $l9)
          (local.get $l8))
        (call $f31
          (local.get $p0)
          (i32.const 48)
          (local.get $p2)
          (local.get $l23)
          (i32.xor
            (local.get $p4)
            (i32.const 65536)))
        (block $B49
          (block $B50
            (block $B51
              (block $B52
                (br_if $B52
                  (i32.ne
                    (local.get $l20)
                    (i32.const 70)))
                (local.set $p3
                  (i32.or
                    (i32.add
                      (local.get $l6)
                      (i32.const 16))
                    (i32.const 9)))
                (local.set $l18
                  (local.tee $l12
                    (select
                      (local.get $l17)
                      (local.get $l18)
                      (i32.gt_u
                        (local.get $l18)
                        (local.get $l17)))))
                (loop $L53
                  (local.set $l10
                    (call $f30
                      (i64.load32_u
                        (local.get $l18))
                      (local.get $p3)))
                  (block $B54
                    (block $B55
                      (br_if $B55
                        (i32.eq
                          (local.get $l18)
                          (local.get $l12)))
                      (br_if $B54
                        (i32.le_u
                          (local.get $l10)
                          (i32.add
                            (local.get $l6)
                            (i32.const 16))))
                      (loop $L56
                        (i32.store8
                          (local.tee $l10
                            (i32.add
                              (local.get $l10)
                              (i32.const -1)))
                          (i32.const 48))
                        (br_if $L56
                          (i32.gt_u
                            (local.get $l10)
                            (i32.add
                              (local.get $l6)
                              (i32.const 16))))
                        (br $B54))
                      (unreachable))
                    (br_if $B54
                      (i32.ne
                        (local.get $l10)
                        (local.get $p3)))
                    (i32.store8
                      (local.tee $l10
                        (i32.add
                          (local.get $l10)
                          (i32.const -1)))
                      (i32.const 48)))
                  (call $f25
                    (local.get $p0)
                    (local.get $l10)
                    (i32.sub
                      (local.get $p3)
                      (local.get $l10)))
                  (br_if $L53
                    (i32.le_u
                      (local.tee $l18
                        (i32.add
                          (local.get $l18)
                          (i32.const 4)))
                      (local.get $l17))))
                (block $B57
                  (br_if $B57
                    (i32.eqz
                      (local.get $l22)))
                  (call $f25
                    (local.get $p0)
                    (i32.const 65581)
                    (i32.const 1)))
                (br_if $B51
                  (i32.ge_u
                    (local.get $l18)
                    (local.get $l11)))
                (br_if $B51
                  (i32.lt_s
                    (local.get $l15)
                    (i32.const 1)))
                (loop $L58
                  (block $B59
                    (br_if $B59
                      (i32.le_u
                        (local.tee $l10
                          (call $f30
                            (i64.load32_u
                              (local.get $l18))
                            (local.get $p3)))
                        (i32.add
                          (local.get $l6)
                          (i32.const 16))))
                    (loop $L60
                      (i32.store8
                        (local.tee $l10
                          (i32.add
                            (local.get $l10)
                            (i32.const -1)))
                        (i32.const 48))
                      (br_if $L60
                        (i32.gt_u
                          (local.get $l10)
                          (i32.add
                            (local.get $l6)
                            (i32.const 16))))))
                  (call $f25
                    (local.get $p0)
                    (local.get $l10)
                    (select
                      (local.get $l15)
                      (i32.const 9)
                      (i32.lt_s
                        (local.get $l15)
                        (i32.const 9))))
                  (local.set $l10
                    (i32.add
                      (local.get $l15)
                      (i32.const -9)))
                  (br_if $B50
                    (i32.ge_u
                      (local.tee $l18
                        (i32.add
                          (local.get $l18)
                          (i32.const 4)))
                      (local.get $l11)))
                  (local.set $l12
                    (i32.gt_s
                      (local.get $l15)
                      (i32.const 9)))
                  (local.set $l15
                    (local.get $l10))
                  (br_if $L58
                    (local.get $l12))
                  (br $B50))
                (unreachable))
              (block $B61
                (br_if $B61
                  (i32.lt_s
                    (local.get $l15)
                    (i32.const 0)))
                (local.set $l22
                  (select
                    (local.get $l11)
                    (i32.add
                      (local.get $l18)
                      (i32.const 4))
                    (i32.gt_u
                      (local.get $l11)
                      (local.get $l18))))
                (local.set $p3
                  (i32.or
                    (i32.add
                      (local.get $l6)
                      (i32.const 16))
                    (i32.const 9)))
                (local.set $l11
                  (local.get $l18))
                (loop $L62
                  (block $B63
                    (br_if $B63
                      (i32.ne
                        (local.tee $l10
                          (call $f30
                            (i64.load32_u
                              (local.get $l11))
                            (local.get $p3)))
                        (local.get $p3)))
                    (i32.store8
                      (local.tee $l10
                        (i32.add
                          (local.get $l10)
                          (i32.const -1)))
                      (i32.const 48)))
                  (block $B64
                    (block $B65
                      (br_if $B65
                        (i32.eq
                          (local.get $l11)
                          (local.get $l18)))
                      (br_if $B64
                        (i32.le_u
                          (local.get $l10)
                          (i32.add
                            (local.get $l6)
                            (i32.const 16))))
                      (loop $L66
                        (i32.store8
                          (local.tee $l10
                            (i32.add
                              (local.get $l10)
                              (i32.const -1)))
                          (i32.const 48))
                        (br_if $L66
                          (i32.gt_u
                            (local.get $l10)
                            (i32.add
                              (local.get $l6)
                              (i32.const 16))))
                        (br $B64))
                      (unreachable))
                    (call $f25
                      (local.get $p0)
                      (local.get $l10)
                      (i32.const 1))
                    (local.set $l10
                      (i32.add
                        (local.get $l10)
                        (i32.const 1)))
                    (br_if $B64
                      (i32.eqz
                        (i32.or
                          (local.get $l15)
                          (local.get $l21))))
                    (call $f25
                      (local.get $p0)
                      (i32.const 65581)
                      (i32.const 1)))
                  (call $f25
                    (local.get $p0)
                    (local.get $l10)
                    (select
                      (local.tee $l12
                        (i32.sub
                          (local.get $p3)
                          (local.get $l10)))
                      (local.get $l15)
                      (i32.gt_s
                        (local.get $l15)
                        (local.get $l12))))
                  (local.set $l15
                    (i32.sub
                      (local.get $l15)
                      (local.get $l12)))
                  (br_if $B61
                    (i32.ge_u
                      (local.tee $l11
                        (i32.add
                          (local.get $l11)
                          (i32.const 4)))
                      (local.get $l22)))
                  (br_if $L62
                    (i32.gt_s
                      (local.get $l15)
                      (i32.const -1)))))
              (call $f31
                (local.get $p0)
                (i32.const 48)
                (i32.add
                  (local.get $l15)
                  (i32.const 18))
                (i32.const 18)
                (i32.const 0))
              (call $f25
                (local.get $p0)
                (local.get $l19)
                (i32.sub
                  (local.get $l13)
                  (local.get $l19)))
              (br $B49))
            (local.set $l10
              (local.get $l15)))
          (call $f31
            (local.get $p0)
            (i32.const 48)
            (i32.add
              (local.get $l10)
              (i32.const 9))
            (i32.const 9)
            (i32.const 0)))
        (call $f31
          (local.get $p0)
          (i32.const 32)
          (local.get $p2)
          (local.get $l23)
          (i32.xor
            (local.get $p4)
            (i32.const 8192)))
        (local.set $l12
          (select
            (local.get $l23)
            (local.get $p2)
            (i32.gt_s
              (local.get $l23)
              (local.get $p2))))
        (br $B3))
      (local.set $l23
        (i32.add
          (local.get $l9)
          (i32.and
            (i32.shr_s
              (i32.shl
                (local.get $p5)
                (i32.const 26))
              (i32.const 31))
            (i32.const 9))))
      (block $B67
        (br_if $B67
          (i32.gt_u
            (local.get $p3)
            (i32.const 11)))
        (local.set $l10
          (i32.sub
            (i32.const 12)
            (local.get $p3)))
        (local.set $l27
          (f64.const 0x1p+4 (;=16;)))
        (loop $L68
          (local.set $l27
            (f64.mul
              (local.get $l27)
              (f64.const 0x1p+4 (;=16;))))
          (br_if $L68
            (local.tee $l10
              (i32.add
                (local.get $l10)
                (i32.const -1)))))
        (block $B69
          (br_if $B69
            (i32.ne
              (i32.load8_u
                (local.get $l23))
              (i32.const 45)))
          (local.set $p1
            (f64.neg
              (f64.add
                (local.get $l27)
                (f64.sub
                  (f64.neg
                    (local.get $p1))
                  (local.get $l27)))))
          (br $B67))
        (local.set $p1
          (f64.sub
            (f64.add
              (local.get $p1)
              (local.get $l27))
            (local.get $l27))))
      (block $B70
        (br_if $B70
          (i32.ne
            (local.tee $l10
              (call $f30
                (i64.extend_i32_u
                  (i32.sub
                    (i32.xor
                      (local.tee $l10
                        (i32.load offset=44
                          (local.get $l6)))
                      (local.tee $l10
                        (i32.shr_s
                          (local.get $l10)
                          (i32.const 31))))
                    (local.get $l10)))
                (local.get $l13)))
            (local.get $l13)))
        (i32.store8
          (local.tee $l10
            (i32.add
              (local.get $l10)
              (i32.const -1)))
          (i32.const 48)))
      (local.set $l21
        (i32.or
          (local.get $l8)
          (i32.const 2)))
      (local.set $l18
        (i32.and
          (local.get $p5)
          (i32.const 32)))
      (local.set $l11
        (i32.load offset=44
          (local.get $l6)))
      (i32.store8
        (local.tee $l22
          (i32.add
            (local.get $l10)
            (i32.const -2)))
        (i32.add
          (local.get $p5)
          (i32.const 15)))
      (i32.store8
        (i32.add
          (local.get $l10)
          (i32.const -1))
        (select
          (i32.const 45)
          (i32.const 43)
          (i32.lt_s
            (local.get $l11)
            (i32.const 0))))
      (local.set $l12
        (i32.and
          (local.get $p4)
          (i32.const 8)))
      (local.set $l11
        (i32.add
          (local.get $l6)
          (i32.const 16)))
      (loop $L71
        (local.set $l10
          (local.get $l11))
        (block $B72
          (block $B73
            (br_if $B73
              (i32.eqz
                (f64.lt
                  (f64.abs
                    (local.get $p1))
                  (f64.const 0x1p+31 (;=2.14748e+09;)))))
            (local.set $l11
              (i32.trunc_f64_s
                (local.get $p1)))
            (br $B72))
          (local.set $l11
            (i32.const -2147483648)))
        (i32.store8
          (local.get $l10)
          (i32.or
            (i32.load8_u
              (i32.add
                (local.get $l11)
                (i32.const 66080)))
            (local.get $l18)))
        (local.set $p1
          (f64.mul
            (f64.sub
              (local.get $p1)
              (f64.convert_i32_s
                (local.get $l11)))
            (f64.const 0x1p+4 (;=16;))))
        (block $B74
          (br_if $B74
            (i32.ne
              (i32.sub
                (local.tee $l11
                  (i32.add
                    (local.get $l10)
                    (i32.const 1)))
                (i32.add
                  (local.get $l6)
                  (i32.const 16)))
              (i32.const 1)))
          (block $B75
            (br_if $B75
              (local.get $l12))
            (br_if $B75
              (i32.gt_s
                (local.get $p3)
                (i32.const 0)))
            (br_if $B74
              (f64.eq
                (local.get $p1)
                (f64.const 0x0p+0 (;=0;)))))
          (i32.store8 offset=1
            (local.get $l10)
            (i32.const 46))
          (local.set $l11
            (i32.add
              (local.get $l10)
              (i32.const 2))))
        (br_if $L71
          (f64.ne
            (local.get $p1)
            (f64.const 0x0p+0 (;=0;)))))
      (local.set $l12
        (i32.const -1))
      (br_if $B3
        (i32.lt_s
          (i32.sub
            (i32.const 2147483645)
            (local.tee $l19
              (i32.add
                (local.get $l21)
                (local.tee $l18
                  (i32.sub
                    (local.get $l13)
                    (local.get $l22))))))
          (local.get $p3)))
      (call $f31
        (local.get $p0)
        (i32.const 32)
        (local.get $p2)
        (local.tee $l11
          (i32.add
            (local.get $l19)
            (local.tee $p3
              (select
                (select
                  (i32.add
                    (local.get $p3)
                    (i32.const 2))
                  (local.tee $l10
                    (i32.sub
                      (local.get $l11)
                      (i32.add
                        (local.get $l6)
                        (i32.const 16))))
                  (i32.lt_s
                    (i32.add
                      (local.get $l10)
                      (i32.const -2))
                    (local.get $p3)))
                (local.get $l10)
                (local.get $p3)))))
        (local.get $p4))
      (call $f25
        (local.get $p0)
        (local.get $l23)
        (local.get $l21))
      (call $f31
        (local.get $p0)
        (i32.const 48)
        (local.get $p2)
        (local.get $l11)
        (i32.xor
          (local.get $p4)
          (i32.const 65536)))
      (call $f25
        (local.get $p0)
        (i32.add
          (local.get $l6)
          (i32.const 16))
        (local.get $l10))
      (call $f31
        (local.get $p0)
        (i32.const 48)
        (i32.sub
          (local.get $p3)
          (local.get $l10))
        (i32.const 0)
        (i32.const 0))
      (call $f25
        (local.get $p0)
        (local.get $l22)
        (local.get $l18))
      (call $f31
        (local.get $p0)
        (i32.const 32)
        (local.get $p2)
        (local.get $l11)
        (i32.xor
          (local.get $p4)
          (i32.const 8192)))
      (local.set $l12
        (select
          (local.get $l11)
          (local.get $p2)
          (i32.gt_s
            (local.get $l11)
            (local.get $p2)))))
    (global.set $g0
      (i32.add
        (local.get $l6)
        (i32.const 560)))
    (local.get $l12))
  (func $f34 (type $t10) (param $p0 i32) (param $p1 i32)
    (local $l2 i32)
    (i32.store
      (local.get $p1)
      (i32.add
        (local.tee $l2
          (i32.and
            (i32.add
              (i32.load
                (local.get $p1))
              (i32.const 7))
            (i32.const -8)))
        (i32.const 16)))
    (f64.store
      (local.get $p0)
      (call $f45
        (i64.load
          (local.get $l2))
        (i64.load
          (i32.add
            (local.get $l2)
            (i32.const 8))))))
  (func $f35 (type $t19) (param $p0 f64) (result i64)
    (i64.reinterpret_f64
      (local.get $p0)))
  (func $f36 (type $t2) (param $p0 i32) (result i32)
    (block $B0
      (br_if $B0
        (local.get $p0))
      (return
        (i32.const 0)))
    (i32.store
      (call $f19)
      (local.get $p0))
    (i32.const -1))
  (func $f37 (type $t0) (result i32)
    (i32.const 42))
  (func $f38 (type $t0) (result i32)
    (call $f37))
  (func $f39 (type $t0) (result i32)
    (i32.const 67360))
  (func $f40 (type $t4)
    (i32.store offset=67456
      (i32.const 0)
      (i32.const 67336))
    (i32.store offset=67384
      (i32.const 0)
      (call $f38)))
  (func $f41 (type $t1) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32)
    (local.set $l3
      (i32.const 1))
    (block $B0
      (block $B1
        (br_if $B1
          (i32.eqz
            (local.get $p0)))
        (br_if $B0
          (i32.le_u
            (local.get $p1)
            (i32.const 127)))
        (block $B2
          (block $B3
            (br_if $B3
              (i32.load
                (i32.load offset=96
                  (call $f39))))
            (br_if $B0
              (i32.eq
                (i32.and
                  (local.get $p1)
                  (i32.const -128))
                (i32.const 57216)))
            (i32.store
              (call $f19)
              (i32.const 25))
            (br $B2))
          (block $B4
            (br_if $B4
              (i32.gt_u
                (local.get $p1)
                (i32.const 2047)))
            (i32.store8 offset=1
              (local.get $p0)
              (i32.or
                (i32.and
                  (local.get $p1)
                  (i32.const 63))
                (i32.const 128)))
            (i32.store8
              (local.get $p0)
              (i32.or
                (i32.shr_u
                  (local.get $p1)
                  (i32.const 6))
                (i32.const 192)))
            (return
              (i32.const 2)))
          (block $B5
            (block $B6
              (br_if $B6
                (i32.lt_u
                  (local.get $p1)
                  (i32.const 55296)))
              (br_if $B5
                (i32.ne
                  (i32.and
                    (local.get $p1)
                    (i32.const -8192))
                  (i32.const 57344))))
            (i32.store8 offset=2
              (local.get $p0)
              (i32.or
                (i32.and
                  (local.get $p1)
                  (i32.const 63))
                (i32.const 128)))
            (i32.store8
              (local.get $p0)
              (i32.or
                (i32.shr_u
                  (local.get $p1)
                  (i32.const 12))
                (i32.const 224)))
            (i32.store8 offset=1
              (local.get $p0)
              (i32.or
                (i32.and
                  (i32.shr_u
                    (local.get $p1)
                    (i32.const 6))
                  (i32.const 63))
                (i32.const 128)))
            (return
              (i32.const 3)))
          (block $B7
            (br_if $B7
              (i32.gt_u
                (i32.add
                  (local.get $p1)
                  (i32.const -65536))
                (i32.const 1048575)))
            (i32.store8 offset=3
              (local.get $p0)
              (i32.or
                (i32.and
                  (local.get $p1)
                  (i32.const 63))
                (i32.const 128)))
            (i32.store8
              (local.get $p0)
              (i32.or
                (i32.shr_u
                  (local.get $p1)
                  (i32.const 18))
                (i32.const 240)))
            (i32.store8 offset=2
              (local.get $p0)
              (i32.or
                (i32.and
                  (i32.shr_u
                    (local.get $p1)
                    (i32.const 6))
                  (i32.const 63))
                (i32.const 128)))
            (i32.store8 offset=1
              (local.get $p0)
              (i32.or
                (i32.and
                  (i32.shr_u
                    (local.get $p1)
                    (i32.const 12))
                  (i32.const 63))
                (i32.const 128)))
            (return
              (i32.const 4)))
          (i32.store
            (call $f19)
            (i32.const 25)))
        (local.set $l3
          (i32.const -1)))
      (return
        (local.get $l3)))
    (i32.store8
      (local.get $p0)
      (local.get $p1))
    (i32.const 1))
  (func $f42 (type $t5) (param $p0 i32) (param $p1 i32) (result i32)
    (block $B0
      (br_if $B0
        (local.get $p0))
      (return
        (i32.const 0)))
    (call $f41
      (local.get $p0)
      (local.get $p1)
      (i32.const 0)))
  (func $f43 (type $t12) (param $p0 i32) (param $p1 i64) (param $p2 i64) (param $p3 i32)
    (local $l4 i64)
    (block $B0
      (block $B1
        (br_if $B1
          (i32.eqz
            (i32.and
              (local.get $p3)
              (i32.const 64))))
        (local.set $p2
          (i64.shl
            (local.get $p1)
            (i64.extend_i32_u
              (i32.add
                (local.get $p3)
                (i32.const -64)))))
        (local.set $p1
          (i64.const 0))
        (br $B0))
      (br_if $B0
        (i32.eqz
          (local.get $p3)))
      (local.set $p2
        (i64.or
          (i64.shr_u
            (local.get $p1)
            (i64.extend_i32_u
              (i32.sub
                (i32.const 64)
                (local.get $p3))))
          (i64.shl
            (local.get $p2)
            (local.tee $l4
              (i64.extend_i32_u
                (local.get $p3))))))
      (local.set $p1
        (i64.shl
          (local.get $p1)
          (local.get $l4))))
    (i64.store
      (local.get $p0)
      (local.get $p1))
    (i64.store offset=8
      (local.get $p0)
      (local.get $p2)))
  (func $f44 (type $t12) (param $p0 i32) (param $p1 i64) (param $p2 i64) (param $p3 i32)
    (local $l4 i64)
    (block $B0
      (block $B1
        (br_if $B1
          (i32.eqz
            (i32.and
              (local.get $p3)
              (i32.const 64))))
        (local.set $p1
          (i64.shr_u
            (local.get $p2)
            (i64.extend_i32_u
              (i32.add
                (local.get $p3)
                (i32.const -64)))))
        (local.set $p2
          (i64.const 0))
        (br $B0))
      (br_if $B0
        (i32.eqz
          (local.get $p3)))
      (local.set $p1
        (i64.or
          (i64.shl
            (local.get $p2)
            (i64.extend_i32_u
              (i32.sub
                (i32.const 64)
                (local.get $p3))))
          (i64.shr_u
            (local.get $p1)
            (local.tee $l4
              (i64.extend_i32_u
                (local.get $p3))))))
      (local.set $p2
        (i64.shr_u
          (local.get $p2)
          (local.get $l4))))
    (i64.store
      (local.get $p0)
      (local.get $p1))
    (i64.store offset=8
      (local.get $p0)
      (local.get $p2)))
  (func $f45 (type $t20) (param $p0 i64) (param $p1 i64) (result f64)
    (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i64) (local $l8 i64) (local $l9 i64) (local $l10 i64)
    (global.set $g0
      (local.tee $l2
        (i32.sub
          (global.get $g0)
          (i32.const 32))))
    (local.set $l7
      (i64.and
        (local.get $p1)
        (i64.const 281474976710655)))
    (block $B0
      (block $B1
        (br_if $B1
          (i32.gt_u
            (i32.add
              (local.tee $l3
                (i32.wrap_i64
                  (local.tee $l8
                    (i64.and
                      (i64.shr_u
                        (local.get $p1)
                        (i64.const 48))
                      (i64.const 32767)))))
              (i32.const -15361))
            (i32.const 2045)))
        (local.set $l7
          (i64.or
            (i64.shr_u
              (local.get $p0)
              (i64.const 60))
            (i64.shl
              (local.get $l7)
              (i64.const 4))))
        (local.set $l9
          (i64.extend_i32_u
            (i32.add
              (local.get $l3)
              (i32.const -15360))))
        (block $B2
          (block $B3
            (br_if $B3
              (i64.lt_u
                (local.tee $p0
                  (i64.and
                    (local.get $p0)
                    (i64.const 1152921504606846975)))
                (i64.const 576460752303423489)))
            (local.set $l7
              (i64.add
                (local.get $l7)
                (i64.const 1)))
            (br $B2))
          (br_if $B2
            (i64.ne
              (local.get $p0)
              (i64.const 576460752303423488)))
          (local.set $l7
            (i64.add
              (i64.and
                (local.get $l7)
                (i64.const 1))
              (local.get $l7))))
        (local.set $l10
          (select
            (i64.const 0)
            (local.get $l7)
            (local.tee $l3
              (i64.gt_u
                (local.get $l7)
                (i64.const 4503599627370495)))))
        (local.set $l9
          (i64.add
            (i64.extend_i32_u
              (local.get $l3))
            (local.get $l9)))
        (br $B0))
      (block $B4
        (br_if $B4
          (i64.eqz
            (i64.or
              (local.get $p0)
              (local.get $l7))))
        (br_if $B4
          (i64.ne
            (local.get $l8)
            (i64.const 32767)))
        (local.set $l10
          (i64.or
            (i64.or
              (i64.shr_u
                (local.get $p0)
                (i64.const 60))
              (i64.shl
                (local.get $l7)
                (i64.const 4)))
            (i64.const 2251799813685248)))
        (local.set $l9
          (i64.const 2047))
        (br $B0))
      (block $B5
        (br_if $B5
          (i32.le_u
            (local.get $l3)
            (i32.const 17406)))
        (local.set $l9
          (i64.const 2047))
        (local.set $l10
          (i64.const 0))
        (br $B0))
      (local.set $l10
        (i64.const 0))
      (local.set $l9
        (i64.const 0))
      (br_if $B0
        (i32.gt_s
          (local.tee $l6
            (i32.sub
              (local.tee $l5
                (select
                  (i32.const 15360)
                  (i32.const 15361)
                  (local.tee $l4
                    (i64.eqz
                      (local.get $l8)))))
              (local.get $l3)))
          (i32.const 112)))
      (call $f43
        (i32.add
          (local.get $l2)
          (i32.const 16))
        (local.get $p0)
        (local.tee $l7
          (select
            (local.get $l7)
            (i64.or
              (local.get $l7)
              (i64.const 281474976710656))
            (local.get $l4)))
        (i32.sub
          (i32.const 128)
          (local.get $l6)))
      (call $f44
        (local.get $l2)
        (local.get $p0)
        (local.get $l7)
        (local.get $l6))
      (local.set $p0
        (i64.or
          (i64.shr_u
            (local.tee $l7
              (i64.load
                (local.get $l2)))
            (i64.const 60))
          (i64.shl
            (i64.load
              (i32.add
                (local.get $l2)
                (i32.const 8)))
            (i64.const 4))))
      (block $B6
        (block $B7
          (br_if $B7
            (i64.lt_u
              (local.tee $l7
                (i64.or
                  (i64.and
                    (local.get $l7)
                    (i64.const 1152921504606846975))
                  (i64.extend_i32_u
                    (i32.and
                      (i32.ne
                        (local.get $l5)
                        (local.get $l3))
                      (i64.ne
                        (i64.or
                          (i64.load offset=16
                            (local.get $l2))
                          (i64.load
                            (i32.add
                              (i32.add
                                (local.get $l2)
                                (i32.const 16))
                              (i32.const 8))))
                        (i64.const 0))))))
              (i64.const 576460752303423489)))
          (local.set $p0
            (i64.add
              (local.get $p0)
              (i64.const 1)))
          (br $B6))
        (br_if $B6
          (i64.ne
            (local.get $l7)
            (i64.const 576460752303423488)))
        (local.set $p0
          (i64.add
            (i64.and
              (local.get $p0)
              (i64.const 1))
            (local.get $p0))))
      (local.set $l10
        (select
          (i64.xor
            (local.get $p0)
            (i64.const 4503599627370496))
          (local.get $p0)
          (local.tee $l3
            (i64.gt_u
              (local.get $p0)
              (i64.const 4503599627370495)))))
      (local.set $l9
        (i64.extend_i32_u
          (local.get $l3))))
    (global.set $g0
      (i32.add
        (local.get $l2)
        (i32.const 32)))
    (f64.reinterpret_i64
      (i64.or
        (i64.or
          (i64.shl
            (local.get $l9)
            (i64.const 52))
          (i64.and
            (local.get $p1)
            (i64.const -9223372036854775808)))
        (local.get $l10))))
  (func $f46 (type $t3) (param $p0 i32)
    (global.set $g1
      (local.get $p0)))
  (func $f47 (type $t0) (result i32)
    (global.get $g1))
  (func $emscripten_stack_init (export "emscripten_stack_init") (type $t4)
    (global.set $g3
      (i32.const 65536))
    (global.set $g2
      (i32.and
        (i32.add
          (i32.const 0)
          (i32.const 15))
        (i32.const -16))))
  (func $emscripten_stack_get_free (export "emscripten_stack_get_free") (type $t0) (result i32)
    (i32.sub
      (global.get $g0)
      (global.get $g2)))
  (func $emscripten_stack_get_base (export "emscripten_stack_get_base") (type $t0) (result i32)
    (global.get $g3))
  (func $emscripten_stack_get_end (export "emscripten_stack_get_end") (type $t0) (result i32)
    (global.get $g2))
  (func $fflush (export "fflush") (type $t2) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32)
    (block $B0
      (br_if $B0
        (local.get $p0))
      (local.set $l1
        (i32.const 0))
      (block $B1
        (br_if $B1
          (i32.eqz
            (i32.load offset=66240
              (i32.const 0))))
        (local.set $l1
          (call $fflush
            (i32.load offset=66240
              (i32.const 0)))))
      (block $B2
        (br_if $B2
          (i32.eqz
            (i32.load offset=67296
              (i32.const 0))))
        (local.set $l1
          (i32.or
            (call $fflush
              (i32.load offset=67296
                (i32.const 0)))
            (local.get $l1))))
      (block $B3
        (br_if $B3
          (i32.eqz
            (local.tee $p0
              (i32.load
                (call $f14)))))
        (loop $L4
          (local.set $l2
            (i32.const 0))
          (block $B5
            (br_if $B5
              (i32.lt_s
                (i32.load offset=76
                  (local.get $p0))
                (i32.const 0)))
            (local.set $l2
              (call $f10
                (local.get $p0))))
          (block $B6
            (br_if $B6
              (i32.eq
                (i32.load offset=20
                  (local.get $p0))
                (i32.load offset=28
                  (local.get $p0))))
            (local.set $l1
              (i32.or
                (call $fflush
                  (local.get $p0))
                (local.get $l1))))
          (block $B7
            (br_if $B7
              (i32.eqz
                (local.get $l2)))
            (call $f11
              (local.get $p0)))
          (br_if $L4
            (local.tee $p0
              (i32.load offset=56
                (local.get $p0))))))
      (call $f15)
      (return
        (local.get $l1)))
    (block $B8
      (block $B9
        (br_if $B9
          (i32.ge_s
            (i32.load offset=76
              (local.get $p0))
            (i32.const 0)))
        (local.set $l2
          (i32.const 1))
        (br $B8))
      (local.set $l2
        (i32.eqz
          (call $f10
            (local.get $p0)))))
    (block $B10
      (block $B11
        (block $B12
          (br_if $B12
            (i32.eq
              (i32.load offset=20
                (local.get $p0))
              (i32.load offset=28
                (local.get $p0))))
          (drop
            (call_indirect $__indirect_function_table (type $t1)
              (local.get $p0)
              (i32.const 0)
              (i32.const 0)
              (i32.load offset=36
                (local.get $p0))))
          (br_if $B12
            (i32.load offset=20
              (local.get $p0)))
          (local.set $l1
            (i32.const -1))
          (br_if $B11
            (i32.eqz
              (local.get $l2)))
          (br $B10))
        (block $B13
          (br_if $B13
            (i32.eq
              (local.tee $l1
                (i32.load offset=4
                  (local.get $p0)))
              (local.tee $l3
                (i32.load offset=8
                  (local.get $p0)))))
          (drop
            (call_indirect $__indirect_function_table (type $t6)
              (local.get $p0)
              (i64.extend_i32_s
                (i32.sub
                  (local.get $l1)
                  (local.get $l3)))
              (i32.const 1)
              (i32.load offset=40
                (local.get $p0)))))
        (local.set $l1
          (i32.const 0))
        (i32.store offset=28
          (local.get $p0)
          (i32.const 0))
        (i64.store offset=16
          (local.get $p0)
          (i64.const 0))
        (i64.store offset=4 align=4
          (local.get $p0)
          (i64.const 0))
        (br_if $B10
          (local.get $l2)))
      (call $f11
        (local.get $p0)))
    (local.get $l1))
  (func $_emscripten_stack_restore (export "_emscripten_stack_restore") (type $t3) (param $p0 i32)
    (global.set $g0
      (local.get $p0)))
  (func $_emscripten_stack_alloc (export "_emscripten_stack_alloc") (type $t2) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32)
    (global.set $g0
      (local.tee $l1
        (i32.and
          (i32.sub
            (global.get $g0)
            (local.get $p0))
          (i32.const -16))))
    (local.get $l1))
  (func $emscripten_stack_get_current (export "emscripten_stack_get_current") (type $t0) (result i32)
    (global.get $g0))
  (func $f56 (type $t21) (param $p0 i32) (param $p1 i32) (param $p2 i64) (param $p3 i32) (result i64)
    (call_indirect $__indirect_function_table (type $t6)
      (local.get $p1)
      (local.get $p2)
      (local.get $p3)
      (local.get $p0)))
  (func $dynCall_jiji (export "dynCall_jiji") (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (param $p4 i32) (result i32)
    (local $l5 i64)
    (local.set $l5
      (call $f56
        (local.get $p0)
        (local.get $p1)
        (i64.or
          (i64.extend_i32_u
            (local.get $p2))
          (i64.shl
            (i64.extend_i32_u
              (local.get $p3))
            (i64.const 32)))
        (local.get $p4)))
    (call $f46
      (i32.wrap_i64
        (i64.shr_u
          (local.get $l5)
          (i64.const 32))))
    (i32.wrap_i64
      (local.get $l5)))
  (table $__indirect_function_table (export "__indirect_function_table") 6 6 funcref)
  (memory $memory (export "memory") 258 258)
  (global $g0 (mut i32) (i32.const 65536))
  (global $g1 (mut i32) (i32.const 0))
  (global $g2 (mut i32) (i32.const 0))
  (global $g3 (mut i32) (i32.const 0))
  (elem $e0 (i32.const 1) func $f7 $f6 $f8 $f33 $f34)
  (data $d0 (i32.const 65536) "-+   0X0x\00-0X+0X 0X-0x+0x 0x\00nan\00inf\00NAN\00INF\00.\00(null)\00Hello World\0a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\19\00\0b\00\19\19\19\00\00\00\00\05\00\00\00\00\00\00\09\00\00\00\00\0b\00\00\00\00\00\00\00\00\19\00\0a\0a\19\19\19\03\0a\07\00\01\00\09\0b\18\00\00\09\06\0b\00\00\0b\00\06\19\00\00\00\19\19\19\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0e\00\00\00\00\00\00\00\00\19\00\0b\0d\19\19\19\00\0d\00\00\02\00\09\0e\00\00\00\09\00\0e\00\00\0e\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0c\00\00\00\00\00\00\00\00\00\00\00\13\00\00\00\00\13\00\00\00\00\09\0c\00\00\00\00\00\0c\00\00\0c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\00\00\00\00\0f\00\00\00\04\0f\00\00\00\00\09\10\00\00\00\00\00\10\00\00\10\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\12\00\00\00\00\00\00\00\00\00\00\00\11\00\00\00\00\11\00\00\00\00\09\12\00\00\00\00\00\12\00\00\12\00\00\1a\00\00\00\1a\1a\1a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\1a\00\00\00\1a\1a\1a\00\00\00\00\00\00\09\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00\17\00\00\00\00\17\00\00\00\00\09\14\00\00\00\00\00\14\00\00\14\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\16\00\00\00\00\00\00\00\00\00\00\00\15\00\00\00\00\15\00\00\00\00\09\16\00\00\00\00\00\16\00\00\16\00\000123456789ABCDEF")
  (data $d1 (i32.const 66096) "\05\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\03\00\00\00\d8\02\01\00\00\04\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\ff\ff\ff\ff\0a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\000\02\01\00"))
