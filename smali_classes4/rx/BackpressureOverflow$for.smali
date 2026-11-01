.class final Lrx/BackpressureOverflow$for;
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
    name = "for"
.end annotation


# static fields
.field public static final do:Lrx/BackpressureOverflow$for;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lrx/BackpressureOverflow$for;

    invoke-direct {v0}, Lrx/BackpressureOverflow$for;-><init>()V

    sput-object v0, Lrx/BackpressureOverflow$for;->do:Lrx/BackpressureOverflow$for;

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
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/zz0;
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/zz0;

    const-string v1, "Overflowed buffer"

    invoke-direct {v0, v1}, Landroid/support/v4/zz0;-><init>(Ljava/lang/String;)V

    throw v0
.end method
