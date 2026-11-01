.class final Lrx/plugins/try;
.super Landroid/support/v4/lp1;
.source "SourceFile"


# static fields
.field private static final do:Lrx/plugins/try;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lrx/plugins/try;

    invoke-direct {v0}, Lrx/plugins/try;-><init>()V

    sput-object v0, Lrx/plugins/try;->do:Lrx/plugins/try;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/support/v4/lp1;-><init>()V

    return-void
.end method

.method public static case()Landroid/support/v4/lp1;
    .locals 1

    .line 1
    sget-object v0, Lrx/plugins/try;->do:Lrx/plugins/try;

    return-object v0
.end method
