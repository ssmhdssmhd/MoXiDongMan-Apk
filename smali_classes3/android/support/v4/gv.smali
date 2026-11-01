.class public Landroid/support/v4/gv;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final case:I = 0x1

.field public static final else:I = 0x2


# instance fields
.field private final do:I

.field private final for:I

.field private final if:I

.field private final new:I

.field private final try:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(IIILjava/security/SecureRandom;)V
    .locals 6

    const/4 v5, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/gv;-><init>(IIILjava/security/SecureRandom;I)V

    return-void
.end method

.method public constructor <init>(IIILjava/security/SecureRandom;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/support/v4/gv;->do:I

    iput p2, p0, Landroid/support/v4/gv;->if:I

    iput p3, p0, Landroid/support/v4/gv;->new:I

    iput p5, p0, Landroid/support/v4/gv;->for:I

    iput-object p4, p0, Landroid/support/v4/gv;->try:Ljava/security/SecureRandom;

    return-void
.end method


# virtual methods
.method public do()I
    .locals 1

    iget v0, p0, Landroid/support/v4/gv;->new:I

    return v0
.end method

.method public for()I
    .locals 1

    iget v0, p0, Landroid/support/v4/gv;->if:I

    return v0
.end method

.method public if()I
    .locals 1

    iget v0, p0, Landroid/support/v4/gv;->do:I

    return v0
.end method

.method public new()Ljava/security/SecureRandom;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/gv;->try:Ljava/security/SecureRandom;

    return-object v0
.end method

.method public try()I
    .locals 1

    iget v0, p0, Landroid/support/v4/gv;->for:I

    return v0
.end method
