.class final Lrx/BackpressureOverflow$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/BackpressureOverflow$Strategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/BackpressureOverflow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation


# static fields
.field public static final do:Lrx/BackpressureOverflow$if;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lrx/BackpressureOverflow$if;

    invoke-direct {v0}, Lrx/BackpressureOverflow$if;-><init>()V

    sput-object v0, Lrx/BackpressureOverflow$if;->do:Lrx/BackpressureOverflow$if;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public mayAttemptDrop()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
