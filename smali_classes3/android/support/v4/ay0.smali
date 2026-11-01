.class public abstract Landroid/support/v4/ay0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final case:C = 'U'

.field public static final else:C = 'R'

.field public static final for:C = 'Z'

.field public static final new:C = 'I'

.field public static final try:C = 'L'


# instance fields
.field public do:I

.field public if:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract case(Landroid/support/v4/he2;)Landroid/support/v4/he2;
.end method

.method public abstract do()Landroid/support/v4/ay0;
.end method

.method public abstract else(Landroid/support/v4/ay0;)Landroid/support/v4/ay0;
.end method

.method public for()I
    .locals 1

    iget v0, p0, Landroid/support/v4/ay0;->if:I

    return v0
.end method

.method public abstract goto(Landroid/support/v4/fd1;)Landroid/support/v4/ay0;
.end method

.method public abstract if()[B
.end method

.method public new()I
    .locals 1

    iget v0, p0, Landroid/support/v4/ay0;->do:I

    return v0
.end method

.method public abstract this(Landroid/support/v4/he2;)Landroid/support/v4/he2;
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method public abstract try()Z
.end method
