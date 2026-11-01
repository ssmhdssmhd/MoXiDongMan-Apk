.class public Landroid/support/v4/cf;
.super Landroid/support/v4/e91;
.source "SourceFile"


# static fields
.field public static final do:Landroid/support/v4/cf;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/support/v4/cf;

    invoke-direct {v0}, Landroid/support/v4/cf;-><init>()V

    sput-object v0, Landroid/support/v4/cf;->do:Landroid/support/v4/cf;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/support/v4/e91;-><init>()V

    return-void
.end method


# virtual methods
.method public do()Ljava/lang/String;
    .locals 1

    const-string v0, "text/css"

    return-object v0
.end method

.method public for()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public if()Ljava/lang/String;
    .locals 1

    const-string v0, "CSS"

    return-object v0
.end method
