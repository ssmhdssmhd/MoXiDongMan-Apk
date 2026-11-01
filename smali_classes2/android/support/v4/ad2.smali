.class public final Landroid/support/v4/ad2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/support/v4/ki0;
.end annotation


# static fields
.field public static final do:Ljava/lang/String; = "-_.*"

.field private static final for:Lcom/google/common/escape/for;

.field public static final if:Ljava/lang/String; = "-._~!$\'()*,;&=@:"

.field private static final new:Lcom/google/common/escape/for;

.field private static final try:Lcom/google/common/escape/for;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/support/v4/cd1;

    const-string v1, "-_.*"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/support/v4/cd1;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Landroid/support/v4/ad2;->for:Lcom/google/common/escape/for;

    .line 2
    new-instance v0, Landroid/support/v4/cd1;

    const-string v1, "-._~!$\'()*,;&=@:+"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/support/v4/cd1;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Landroid/support/v4/ad2;->new:Lcom/google/common/escape/for;

    .line 3
    new-instance v0, Landroid/support/v4/cd1;

    const-string v1, "-._~!$\'()*,;&=@:+/?"

    invoke-direct {v0, v1, v2}, Landroid/support/v4/cd1;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Landroid/support/v4/ad2;->try:Lcom/google/common/escape/for;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static do()Lcom/google/common/escape/for;
    .locals 1

    .line 1
    sget-object v0, Landroid/support/v4/ad2;->for:Lcom/google/common/escape/for;

    return-object v0
.end method

.method public static for()Lcom/google/common/escape/for;
    .locals 1

    .line 1
    sget-object v0, Landroid/support/v4/ad2;->new:Lcom/google/common/escape/for;

    return-object v0
.end method

.method public static if()Lcom/google/common/escape/for;
    .locals 1

    .line 1
    sget-object v0, Landroid/support/v4/ad2;->try:Lcom/google/common/escape/for;

    return-object v0
.end method
