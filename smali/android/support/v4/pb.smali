.class public final synthetic Landroid/support/v4/pb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# instance fields
.field public final synthetic do:J

.field public final synthetic if:I


# direct methods
.method public synthetic constructor <init>(JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/support/v4/pb;->do:J

    iput p3, p0, Landroid/support/v4/pb;->if:I

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 3

    iget-wide v0, p0, Landroid/support/v4/pb;->do:J

    iget v2, p0, Landroid/support/v4/pb;->if:I

    invoke-static {v0, v1, v2, p1}, Lcom/wsw/cospa/dao/do;->try(JILio/reactivex/ObservableEmitter;)V

    return-void
.end method
