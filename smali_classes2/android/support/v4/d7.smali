.class public Landroid/support/v4/d7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private error_code:I

.field private reason:Ljava/lang/String;

.field private resultcode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getError_code()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/d7;->error_code:I

    return v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/d7;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public getResultcode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/d7;->resultcode:Ljava/lang/String;

    return-object v0
.end method

.method public setError_code(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/support/v4/d7;->error_code:I

    return-void
.end method

.method public setReason(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/d7;->reason:Ljava/lang/String;

    return-void
.end method

.method public setResultcode(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/d7;->resultcode:Ljava/lang/String;

    return-void
.end method
