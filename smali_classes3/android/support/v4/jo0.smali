.class public Landroid/support/v4/jo0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/KeyStore$LoadStoreParameter;


# instance fields
.field private do:Ljava/io/OutputStream;

.field private for:Z

.field private if:Ljava/security/KeyStore$ProtectionParameter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public case(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/v4/jo0;->for:Z

    return-void
.end method

.method public do()Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/jo0;->do:Ljava/io/OutputStream;

    return-object v0
.end method

.method public for(Ljava/io/OutputStream;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/jo0;->do:Ljava/io/OutputStream;

    return-void
.end method

.method public getProtectionParameter()Ljava/security/KeyStore$ProtectionParameter;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/jo0;->if:Ljava/security/KeyStore$ProtectionParameter;

    return-object v0
.end method

.method public if()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/jo0;->for:Z

    return v0
.end method

.method public new([C)V
    .locals 1

    new-instance v0, Ljava/security/KeyStore$PasswordProtection;

    invoke-direct {v0, p1}, Ljava/security/KeyStore$PasswordProtection;-><init>([C)V

    iput-object v0, p0, Landroid/support/v4/jo0;->if:Ljava/security/KeyStore$ProtectionParameter;

    return-void
.end method

.method public try(Ljava/security/KeyStore$ProtectionParameter;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/jo0;->if:Ljava/security/KeyStore$ProtectionParameter;

    return-void
.end method
