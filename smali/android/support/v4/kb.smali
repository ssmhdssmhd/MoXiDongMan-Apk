.class public final synthetic Landroid/support/v4/kb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# instance fields
.field public final synthetic do:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/kb;->do:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/kb;->do:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/wsw/cospa/model/do;->throws(Ljava/util/List;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method
