.class public Landroid/support/v4/vm;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final do:[Ljava/lang/Object;

.field public static final for:[C

.field public static final if:[Ljava/lang/Class;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    .line 1
    sput-object v1, Landroid/support/v4/vm;->do:[Ljava/lang/Object;

    new-array v1, v0, [Ljava/lang/Class;

    .line 2
    sput-object v1, Landroid/support/v4/vm;->if:[Ljava/lang/Class;

    new-array v0, v0, [C

    .line 3
    sput-object v0, Landroid/support/v4/vm;->for:[C

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
