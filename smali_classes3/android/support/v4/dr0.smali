.class public Landroid/support/v4/dr0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private do:Ljava/security/SecureRandom;

.field private if:I


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/dr0;->do:Ljava/security/SecureRandom;

    iput p2, p0, Landroid/support/v4/dr0;->if:I

    return-void
.end method


# virtual methods
.method public do()Ljava/security/SecureRandom;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/dr0;->do:Ljava/security/SecureRandom;

    return-object v0
.end method

.method public if()I
    .locals 1

    iget v0, p0, Landroid/support/v4/dr0;->if:I

    return v0
.end method
