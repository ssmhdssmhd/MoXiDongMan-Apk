.class public final synthetic Landroid/support/v4/mb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# instance fields
.field public final synthetic do:J


# direct methods
.method public synthetic constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/support/v4/mb;->do:J

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 2

    iget-wide v0, p0, Landroid/support/v4/mb;->do:J

    invoke-static {v0, v1, p1}, Lcom/wsw/cospa/dao/do;->class(JLio/reactivex/ObservableEmitter;)V

    return-void
.end method
