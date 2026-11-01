.class public final Lrx/BackpressureOverflow;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/BackpressureOverflow$for;,
        Lrx/BackpressureOverflow$do;,
        Lrx/BackpressureOverflow$if;,
        Lrx/BackpressureOverflow$Strategy;
    }
.end annotation


# static fields
.field public static final do:Lrx/BackpressureOverflow$Strategy;

.field public static final for:Lrx/BackpressureOverflow$Strategy;

.field public static final if:Lrx/BackpressureOverflow$Strategy;

.field public static final new:Lrx/BackpressureOverflow$Strategy;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lrx/BackpressureOverflow$for;->do:Lrx/BackpressureOverflow$for;

    sput-object v0, Lrx/BackpressureOverflow;->do:Lrx/BackpressureOverflow$Strategy;

    .line 2
    sput-object v0, Lrx/BackpressureOverflow;->if:Lrx/BackpressureOverflow$Strategy;

    .line 3
    sget-object v0, Lrx/BackpressureOverflow$if;->do:Lrx/BackpressureOverflow$if;

    sput-object v0, Lrx/BackpressureOverflow;->for:Lrx/BackpressureOverflow$Strategy;

    .line 4
    sget-object v0, Lrx/BackpressureOverflow$do;->do:Lrx/BackpressureOverflow$do;

    sput-object v0, Lrx/BackpressureOverflow;->new:Lrx/BackpressureOverflow$Strategy;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
