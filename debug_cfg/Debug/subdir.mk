################################################################################
# MRS Version: 2.2.0
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Debug/debug.c 

C_DEPS += \
./Debug/debug.d 

OBJS += \
./Debug/debug.o 


EXPANDS += \
./Debug/debug.c.234r.expand 



# Each subdirectory must supply rules for building sources it contributes
Debug/%.o: ../Debug/%.c
		riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -msave-restore -fmax-errors=20 -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized -g -DHAS_PRINTF -DLFTL_CH32V307 -I"../../lean-ftl-ch32v307/Debug" -I"../../lean-ftl-ch32v307/Core" -I"../../lean-ftl-ch32v307/User" -I"../../lean-ftl-ch32v307/Peripheral/inc" -I"../../lean-ftl-ch32v307/lean-ftl-dist/liblean-ftl-test/include" -I"../../lean-ftl-ch32v307/lean-ftl-dist/debug/include" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"

