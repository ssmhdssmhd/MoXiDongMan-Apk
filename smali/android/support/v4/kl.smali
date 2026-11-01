.class public final synthetic Landroid/support/v4/kl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/model/if;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/model/if;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/kl;->do:Lcom/wsw/cospa/model/if;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/kl;->do:Lcom/wsw/cospa/model/if;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/wsw/cospa/model/if;->do(Lcom/wsw/cospa/model/if;Ljava/lang/String;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
