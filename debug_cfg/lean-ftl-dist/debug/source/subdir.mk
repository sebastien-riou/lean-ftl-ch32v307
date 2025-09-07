################################################################################
# MRS Version: 2.2.0
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lean-ftl-dist/debug/source/ftl.c 

C_DEPS += \
./lean-ftl-dist/debug/source/ftl.d 

OBJS += \
./lean-ftl-dist/debug/source/ftl.o 


EXPANDS += \
./lean-ftl-dist/debug/source/ftl.c.234r.expand 



# Each subdirectory must supply rules for building sources it contributes
lean-ftl-dist/debug/source/%.o: ../lean-ftl-dist/debug/source/%.c
		riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -msave-restore -fmax-errors=20 -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized -g -DVERSION_TIMESTAMP=1 -DHAS_PRINTF -I"../../lean-ftl-ch32v307/Debug" -I"../../lean-ftl-ch32v307/Core" -I"../../lean-ftl-ch32v307/User" -I"../../lean-ftl-ch32v307/Peripheral/inc" -I"../../lean-ftl-ch32v307/lean-ftl-dist/liblean-ftl-test/include" -I"../../lean-ftl-ch32v307/lean-ftl-dist/debug/include" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"

