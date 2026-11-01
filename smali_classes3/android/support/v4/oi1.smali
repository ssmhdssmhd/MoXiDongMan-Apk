.class public Landroid/support/v4/oi1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# static fields
.field public static final case:Ljava/lang/String;

.field public static final for:Ljava/lang/String;

.field public static final if:Ljava/lang/String;

.field public static final new:Ljava/lang/String;

.field public static final try:Ljava/lang/String;


# instance fields
.field private do:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/support/v4/ri1;->do(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v4/oi1;->if:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {v0}, Landroid/support/v4/ri1;->do(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v4/oi1;->for:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-static {v0}, Landroid/support/v4/ri1;->do(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v4/oi1;->new:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-static {v0}, Landroid/support/v4/ri1;->do(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v4/oi1;->try:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-static {v0}, Landroid/support/v4/ri1;->do(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v4/oi1;->case:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/oi1;->do:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public do()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/oi1;->do:Ljava/lang/String;

    return-object v0
.end method
