.class final Lrx/BackpressureOverflow$do;
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
    name = "do"
.end annotation


# static fields
.field public static final do:Lrx/BackpressureOverflow$do;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lrx/BackpressureOverflow$do;

    invoke-direct {v0}, Lrx/BackpressureOverflow$do;-><init>()V

    sput-object v0, Lrx/BackpressureOverflow$do;->do:Lrx/BackpressureOverflow$do;

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

    const/4 v0, 0x0

    return v0
.end method
