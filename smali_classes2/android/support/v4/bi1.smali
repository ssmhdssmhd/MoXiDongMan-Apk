.class public Landroid/support/v4/bi1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private do:Ljava/lang/String;

.field private if:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/support/v4/bi1;->do:Ljava/lang/String;

    .line 3
    iput p2, p0, Landroid/support/v4/bi1;->if:I

    return-void
.end method


# virtual methods
.method public do()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/bi1;->do:Ljava/lang/String;

    return-object v0
.end method

.method public if()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/bi1;->if:I

    return v0
.end method
