.class Lorg/bouncycastle/crypto/encodings/for$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/crypto/encodings/for;->else()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lorg/bouncycastle/crypto/encodings/for;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/encodings/for;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/crypto/encodings/for$if;->do:Lorg/bouncycastle/crypto/encodings/for;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 1

    const-string v0, "org.bouncycastle.pkcs1.not_strict"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
