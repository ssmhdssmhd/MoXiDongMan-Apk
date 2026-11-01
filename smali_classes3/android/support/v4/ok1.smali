.class public Landroid/support/v4/ok1;
.super Landroid/support/v4/dr0;
.source "SourceFile"


# instance fields
.field private for:Landroid/support/v4/uk1;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;Landroid/support/v4/uk1;)V
    .locals 3

    invoke-virtual {p2}, Landroid/support/v4/uk1;->new()[I

    move-result-object v0

    invoke-virtual {p2}, Landroid/support/v4/uk1;->new()[I

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    invoke-virtual {p2}, Landroid/support/v4/uk1;->new()[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    sub-int/2addr v0, v1

    invoke-direct {p0, p1, v0}, Landroid/support/v4/dr0;-><init>(Ljava/security/SecureRandom;I)V

    iput-object p2, p0, Landroid/support/v4/ok1;->for:Landroid/support/v4/uk1;

    return-void
.end method


# virtual methods
.method public for()Landroid/support/v4/uk1;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/ok1;->for:Landroid/support/v4/uk1;

    return-object v0
.end method
