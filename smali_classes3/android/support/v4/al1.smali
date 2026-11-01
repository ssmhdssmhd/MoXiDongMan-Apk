.class public Landroid/support/v4/al1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field private do:[[S

.field private for:[S

.field private if:[[S

.field private new:I


# direct methods
.method public constructor <init>(I[[S[[S[S)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/support/v4/al1;->new:I

    iput-object p2, p0, Landroid/support/v4/al1;->do:[[S

    iput-object p3, p0, Landroid/support/v4/al1;->if:[[S

    iput-object p4, p0, Landroid/support/v4/al1;->for:[S

    return-void
.end method


# virtual methods
.method public do()[[S
    .locals 1

    iget-object v0, p0, Landroid/support/v4/al1;->do:[[S

    return-object v0
.end method

.method public for()[[S
    .locals 1

    iget-object v0, p0, Landroid/support/v4/al1;->if:[[S

    return-object v0
.end method

.method public if()[S
    .locals 1

    iget-object v0, p0, Landroid/support/v4/al1;->for:[S

    return-object v0
.end method

.method public new()I
    .locals 1

    iget v0, p0, Landroid/support/v4/al1;->new:I

    return v0
.end method
