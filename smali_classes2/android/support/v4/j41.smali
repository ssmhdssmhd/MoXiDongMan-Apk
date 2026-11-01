.class public final Landroid/support/v4/j41;
.super Landroid/support/v4/kl1;
.source "SourceFile"


# static fields
.field private static final do:Landroid/support/v4/j41;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/support/v4/j41;

    invoke-direct {v0}, Landroid/support/v4/j41;-><init>()V

    .line 2
    sput-object v0, Landroid/support/v4/j41;->do:Landroid/support/v4/j41;

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

.method public static getNotFoundInstance()Landroid/support/v4/j41;
    .locals 1

    .line 1
    sget-object v0, Landroid/support/v4/j41;->do:Landroid/support/v4/j41;

    return-object v0
.end method
