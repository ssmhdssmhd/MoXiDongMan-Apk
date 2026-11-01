.class final Lorg/bouncycastle/asn1/x9/do$do;
.super Landroid/support/v4/uh2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/asn1/x9/do;
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
    .locals 12

    new-instance v9, Ljava/math/BigInteger;

    const-string v0, "03FFFFFFFFFFFFFFFFFFFE1AEE140F110AFF961309"

    const/16 v1, 0x10

    invoke-direct {v9, v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const-wide/16 v2, 0x2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v10

    new-instance v11, Lorg/bouncycastle/math/ec/if$try;

    new-instance v5, Ljava/math/BigInteger;

    const-string v0, "07A526C63D3E25A256A007699F5447E32AE456B50E"

    invoke-direct {v5, v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v6, Ljava/math/BigInteger;

    const-string v0, "03F7061798EB99E238FD6F1BF95B48FEEB4854252B"

    invoke-direct {v6, v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/16 v1, 0xa3

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/16 v4, 0x8

    move-object v0, v11

    move-object v7, v9

    move-object v8, v10

    invoke-direct/range {v0 .. v8}, Lorg/bouncycastle/math/ec/if$try;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v6, Landroid/support/v4/th2;

    new-instance v2, Landroid/support/v4/vh2;

    const-string v0, "0202F9F87B7C574D0BDECF8A22E6524775F98CDEBDCB"

    invoke-static {v0}, Lorg/bouncycastle/util/encoders/for;->if(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v2, v11, v0}, Landroid/support/v4/vh2;-><init>(Lorg/bouncycastle/math/ec/if;[B)V

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, v11

    move-object v3, v9

    move-object v4, v10

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/th2;-><init>(Lorg/bouncycastle/math/ec/if;Landroid/support/v4/vh2;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v6
.end method
