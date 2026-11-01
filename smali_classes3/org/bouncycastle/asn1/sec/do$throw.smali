.class final Lorg/bouncycastle/asn1/sec/do$throw;
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
    .locals 12

    const-string v0, "0163F35A5137C2CE3EA6ED8667190B0BC43ECD69977702709B"

    invoke-static {v0}, Lorg/bouncycastle/asn1/sec/do;->do(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v4

    const-string v0, "00C9BB9E8927D4D64C377E2AB2856A5B16E3EFB7F61D4316AE"

    invoke-static {v0}, Lorg/bouncycastle/asn1/sec/do;->do(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v5

    const-string v0, "10B7B4D696E676875615175137C8A16FD0DA2211"

    invoke-static {v0}, Lorg/bouncycastle/util/encoders/for;->if(Ljava/lang/String;)[B

    move-result-object v11

    const-string v0, "010000000000000000000000015AAB561B005413CCD4EE99D5"

    invoke-static {v0}, Lorg/bouncycastle/asn1/sec/do;->do(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v9

    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v10

    new-instance v0, Lorg/bouncycastle/math/ec/if$try;

    const/16 v2, 0xc1

    const/16 v3, 0xf

    move-object v1, v0

    move-object v6, v9

    move-object v7, v10

    invoke-direct/range {v1 .. v7}, Lorg/bouncycastle/math/ec/if$try;-><init>(IILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-static {v0}, Lorg/bouncycastle/asn1/sec/do;->if(Lorg/bouncycastle/math/ec/if;)Lorg/bouncycastle/math/ec/if;

    move-result-object v7

    new-instance v8, Landroid/support/v4/vh2;

    const-string v0, "0400D9B67D192E0367C803F39E1A7E82CA14A651350AAE617E8F01CE94335607C304AC29E7DEFBD9CA01F596F927224CDECF6C"

    invoke-static {v0}, Lorg/bouncycastle/util/encoders/for;->if(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v8, v7, v0}, Landroid/support/v4/vh2;-><init>(Lorg/bouncycastle/math/ec/if;[B)V

    new-instance v0, Landroid/support/v4/th2;

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Landroid/support/v4/th2;-><init>(Lorg/bouncycastle/math/ec/if;Landroid/support/v4/vh2;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v0
.end method
