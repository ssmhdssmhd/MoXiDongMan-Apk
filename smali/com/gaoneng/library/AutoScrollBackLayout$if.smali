.class Lcom/gaoneng/library/AutoScrollBackLayout$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaoneng/library/AutoScrollBackLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "if"
.end annotation


# instance fields
.field public final synthetic do:Lcom/gaoneng/library/AutoScrollBackLayout;


# direct methods
.method private constructor <init>(Lcom/gaoneng/library/AutoScrollBackLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gaoneng/library/AutoScrollBackLayout$if;->do:Lcom/gaoneng/library/AutoScrollBackLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gaoneng/library/AutoScrollBackLayout;Lcom/gaoneng/library/AutoScrollBackLayout$do;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/gaoneng/library/AutoScrollBackLayout$if;-><init>(Lcom/gaoneng/library/AutoScrollBackLayout;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gaoneng/library/AutoScrollBackLayout$if;->do:Lcom/gaoneng/library/AutoScrollBackLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/gaoneng/library/AutoScrollBackLayout;->class(Z)V

    return-void
.end method
