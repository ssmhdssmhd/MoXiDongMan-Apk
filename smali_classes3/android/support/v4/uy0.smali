.class public Landroid/support/v4/uy0;
.super Landroid/support/v4/ez0;
.source "SourceFile"


# instance fields
.field private final goto:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v0, 0xb

    const/16 v1, 0x32

    const-string v2, "SHA-256"

    invoke-direct {p0, v0, v1, v2}, Landroid/support/v4/uy0;-><init>(IILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const-string v0, "SHA-256"

    invoke-direct {p0, p1, v0}, Landroid/support/v4/uy0;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const-string v0, "SHA-256"

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/uy0;-><init>(IILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    const-string v0, "SHA-256"

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v4/uy0;-><init>(IIILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/ez0;-><init>(III)V

    iput-object p4, p0, Landroid/support/v4/uy0;->goto:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/support/v4/ez0;-><init>(II)V

    iput-object p3, p0, Landroid/support/v4/uy0;->goto:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v4/ez0;-><init>(I)V

    iput-object p2, p0, Landroid/support/v4/uy0;->goto:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0xb

    const/16 v1, 0x32

    invoke-direct {p0, v0, v1, p1}, Landroid/support/v4/uy0;-><init>(IILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public try()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/uy0;->goto:Ljava/lang/String;

    return-object v0
.end method
