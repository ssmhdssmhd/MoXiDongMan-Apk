.class public final synthetic Landroid/support/v4/l6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# instance fields
.field public final synthetic do:Ljava/lang/String;

.field public final synthetic if:Z


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/l6;->do:Ljava/lang/String;

    iput-boolean p2, p0, Landroid/support/v4/l6;->if:Z

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/l6;->do:Ljava/lang/String;

    iget-boolean v1, p0, Landroid/support/v4/l6;->if:Z

    invoke-static {v0, v1, p1}, Lcom/wsw/cospa/utils/else;->do(Ljava/lang/String;ZLio/reactivex/ObservableEmitter;)V

    return-void
.end method
