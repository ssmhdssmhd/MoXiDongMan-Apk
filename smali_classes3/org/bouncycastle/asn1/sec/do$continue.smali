.class final Lorg/bouncycastle/asn1/sec/do$continue;
.super Landroid/support/v4/uh2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/asn1/sec/do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/uh2;-><init>()V

    return-void
.end method


# virtual methods
.method public do()Landroid/support/v4/th2;
    .locals 11

    const-string v0, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFAC73"

    invoke-static {v0}, Lorg/bouncycastle/asn1/sec/do;->do(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v2

    const-string v0, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFAC70"

    invoke-static {v0}, Lorg/bouncycastle/asn1/sec/do;->do(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v3

    const-string v0, "B4E134D3FB59EB8BAB57274904664D5AF50388BA"

    invoke-static {v0}, Lorg/bouncycastle/asn1/sec/do;->do(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v4

    const-string v0, "B99B99B099B323E02709A4D696E6768756151751"

    invoke-static {v0}, Lorg/bouncycastle/util/encoders/for;->if(Ljava/lang/String;)[B

    move-result-object v10

    const-string v0, "0100000000000000000000351EE786A818F3A1A16B"

    invoke-static {v0}, Lorg/bouncycastle/asn1/sec/do;->do(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v8

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v9

    new-instance v0, Lorg/bouncycastle/math/ec/if$case;

    move-object v1, v0

    move-object v5, v8

    move-object v6, v9

    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/math/ec/if$case;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-static {v0}, Lorg/bouncycastle/asn1/sec/do;->if(Lorg/bouncycastle/math/ec/if;)Lorg/bouncycastle/math/ec/if;

    move-result-object v6

    new-instance v7, Landroid/support/v4/vh2;

    const-string v0, "0452DCB034293A117E1F4FF11B30F7199D3144CE6DFEAFFEF2E331F296E071FA0DF9982CFEA7D43F2E"

    invoke-static {v0}, Lorg/bouncycastle/util/encoders/for;->if(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v7, v6, v0}, Landroid/support/v4/vh2;-><init>(Lorg/bouncycastle/math/ec/if;[B)V

    new-instance v0, Landroid/support/v4/th2;

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Landroid/support/v4/th2;-><init>(Lorg/bouncycastle/math/ec/if;Landroid/support/v4/vh2;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v0
.end method
