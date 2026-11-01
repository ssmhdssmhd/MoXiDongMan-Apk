.class public Landroid/support/v4/u5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/KeyStore$LoadStoreParameter;


# instance fields
.field private final do:Ljava/security/KeyStore$ProtectionParameter;

.field private for:Ljava/io/OutputStream;

.field private final if:Landroid/support/v4/u91;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Landroid/support/v4/u91;Ljava/security/KeyStore$ProtectionParameter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/u5;->for:Ljava/io/OutputStream;

    iput-object p2, p0, Landroid/support/v4/u5;->if:Landroid/support/v4/u91;

    iput-object p3, p0, Landroid/support/v4/u5;->do:Ljava/security/KeyStore$ProtectionParameter;

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Landroid/support/v4/u91;[C)V
    .locals 1

    new-instance v0, Ljava/security/KeyStore$PasswordProtection;

    invoke-direct {v0, p3}, Ljava/security/KeyStore$PasswordProtection;-><init>([C)V

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/u5;-><init>(Ljava/io/OutputStream;Landroid/support/v4/u91;Ljava/security/KeyStore$ProtectionParameter;)V

    return-void
.end method


# virtual methods
.method public do()Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/u5;->for:Ljava/io/OutputStream;

    return-object v0
.end method

.method public getProtectionParameter()Ljava/security/KeyStore$ProtectionParameter;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/u5;->do:Ljava/security/KeyStore$ProtectionParameter;

    return-object v0
.end method

.method public if()Landroid/support/v4/u91;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/u5;->if:Landroid/support/v4/u91;

    return-object v0
.end method
