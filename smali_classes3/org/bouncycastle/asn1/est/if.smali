.class Lorg/bouncycastle/asn1/est/if;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static do([Landroid/support/v4/l4;)[Landroid/support/v4/l4;
    .locals 3

    array-length v0, p0

    new-array v0, v0, [Landroid/support/v4/l4;

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method
