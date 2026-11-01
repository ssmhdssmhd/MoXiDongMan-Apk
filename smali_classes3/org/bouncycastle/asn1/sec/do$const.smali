.class final Lorg/bouncycastle/asn1/sec/do$const;
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
    .locals 14

    const-string v0, "07B6882CAAEFA84F9554FF8428BD88E246D2782AE2"

    invoke-static {v0}, Lorg/bouncycastle/asn1/sec/do;->do(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v6

    const-string v0, "0713612DCDDCB40AAB946BDA29CA91F73AF958AFD9"

    invoke-static {v0}, Lorg/bouncycastle/asn1/sec/do;->do(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v7

    const-string v0, "24B7B137C8A14D696E6768756151756FD0DA2E5C"

    invoke-static {v0}, Lorg/bouncycastle/util/encoders/for;->if(Ljava/lang/String;)[B

    move-result-object v13

    const-string v0, "03FFFFFFFFFFFFFFFFFFFF48AAB689C29CA710279B"

    invoke-static {v0}, Lorg/bouncycastle/asn1/sec/do;->do(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v11

    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v12

    new-instance v0, Lorg/bouncycastle/math/ec/if$try;

    const/16 v2, 0xa3

    const/4 v3, 0x3

    const/4 v4, 0x6

    const/4 v5, 0x7

    move-object v1, v0

    move-object v8, v11

    move-object v9, v12

    invoke-direct/range {v1 .. v9}, Lorg/bouncycastle/math/ec/if$try;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-static {v0}, Lorg/bouncycastle/asn1/sec/do;->if(Lorg/bouncycastle/math/ec/if;)Lorg/bouncycastle/math/ec/if;

    move-result-object v9

    new-instance v10, Landroid/support/v4/vh2;

    const-string v0, "040369979697AB43897789566789567F787A7876A65400435EDB42EFAFB2989D51FEFCE3C80988F41FF883"

    invoke-static {v0}, Lorg/bouncycastle/util/encoders/for;->if(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v10, v9, v0}, Landroid/support/v4/vh2;-><init>(Lorg/bouncycastle/math/ec/if;[B)V

    new-instance v0, Landroid/support/v4/th2;

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Landroid/support/v4/th2;-><init>(Lorg/bouncycastle/math/ec/if;Landroid/support/v4/vh2;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v0
.end method
