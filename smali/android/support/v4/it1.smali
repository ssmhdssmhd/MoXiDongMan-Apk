.class public final synthetic Landroid/support/v4/it1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/model/SearchComicModel;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/model/SearchComicModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/it1;->do:Lcom/wsw/cospa/model/SearchComicModel;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/it1;->do:Lcom/wsw/cospa/model/SearchComicModel;

    invoke-static {v0}, Lcom/wsw/cospa/model/SearchComicModel;->new(Lcom/wsw/cospa/model/SearchComicModel;)V

    return-void
.end method
