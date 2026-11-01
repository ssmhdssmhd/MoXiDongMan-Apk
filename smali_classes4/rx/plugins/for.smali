.class final Lrx/plugins/for;
.super Landroid/support/v4/ip1;
.source "SourceFile"


# static fields
.field private static final do:Lrx/plugins/for;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lrx/plugins/for;

    invoke-direct {v0}, Lrx/plugins/for;-><init>()V

    sput-object v0, Lrx/plugins/for;->do:Lrx/plugins/for;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/support/v4/ip1;-><init>()V

    return-void
.end method

.method public static case()Landroid/support/v4/ip1;
    .locals 1

    .line 1
    sget-object v0, Lrx/plugins/for;->do:Lrx/plugins/for;

    return-object v0
.end method
