.class public final synthetic Landroid/support/v4/q02;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/activity/SourceFilterView;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/activity/SourceFilterView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/q02;->do:Lcom/wsw/cospa/activity/SourceFilterView;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/q02;->do:Lcom/wsw/cospa/activity/SourceFilterView;

    invoke-static {v0, p1}, Lcom/wsw/cospa/activity/SourceFilterView;->new(Lcom/wsw/cospa/activity/SourceFilterView;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method
