.class public final synthetic Landroid/support/v4/op1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# instance fields
.field public final synthetic do:Lcom/luck/picture/lib/rxbus2/if$new;


# direct methods
.method public synthetic constructor <init>(Lcom/luck/picture/lib/rxbus2/if$new;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/op1;->do:Lcom/luck/picture/lib/rxbus2/if$new;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/op1;->do:Lcom/luck/picture/lib/rxbus2/if$new;

    invoke-static {v0, p1}, Lcom/luck/picture/lib/rxbus2/if;->for(Lcom/luck/picture/lib/rxbus2/if$new;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method
