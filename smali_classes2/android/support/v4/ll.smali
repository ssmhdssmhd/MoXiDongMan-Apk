.class public final Landroid/support/v4/ll;
.super Landroid/support/v4/kl1;
.source "SourceFile"


# static fields
.field private static final do:Landroid/support/v4/ll;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/support/v4/ll;

    invoke-direct {v0}, Landroid/support/v4/ll;-><init>()V

    .line 2
    sput-object v0, Landroid/support/v4/ll;->do:Landroid/support/v4/ll;

    sget-object v1, Landroid/support/v4/kl1;->NO_TRACE:[Ljava/lang/StackTraceElement;

    invoke-virtual {v0, v1}, Ljava/lang/Exception;->setStackTrace([Ljava/lang/StackTraceElement;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/support/v4/kl1;-><init>()V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroid/support/v4/kl1;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static getChecksumInstance()Landroid/support/v4/ll;
    .locals 1

    .line 1
    sget-boolean v0, Landroid/support/v4/kl1;->isStackTrace:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/support/v4/ll;

    invoke-direct {v0}, Landroid/support/v4/ll;-><init>()V

    return-object v0

    :cond_0
    sget-object v0, Landroid/support/v4/ll;->do:Landroid/support/v4/ll;

    return-object v0
.end method

.method public static getChecksumInstance(Ljava/lang/Throwable;)Landroid/support/v4/ll;
    .locals 1

    .line 2
    sget-boolean v0, Landroid/support/v4/kl1;->isStackTrace:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/support/v4/ll;

    invoke-direct {v0, p0}, Landroid/support/v4/ll;-><init>(Ljava/lang/Throwable;)V

    return-object v0

    :cond_0
    sget-object p0, Landroid/support/v4/ll;->do:Landroid/support/v4/ll;

    return-object p0
.end method
