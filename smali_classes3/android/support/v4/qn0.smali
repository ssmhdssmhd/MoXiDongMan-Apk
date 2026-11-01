.class public Landroid/support/v4/qn0;
.super Landroid/support/v4/qc1;
.source "SourceFile"


# instance fields
.field public goto:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/support/v4/qc1;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Landroid/support/v4/qn0;->goto:I

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/qc1;II)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/support/v4/qc1;-><init>(Landroid/support/v4/qc1;I)V

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Landroid/support/v4/qn0;->goto:I

    .line 5
    iput p3, p0, Landroid/support/v4/qn0;->goto:I

    return-void
.end method


# virtual methods
.method public try()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/qn0;->goto:I

    return v0
.end method
