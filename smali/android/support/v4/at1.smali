.class public final synthetic Landroid/support/v4/at1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic do:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/at1;->do:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/at1;->do:Ljava/lang/String;

    check-cast p1, Lcom/wsw/cospa/bean/SearchComicBean;

    check-cast p2, Lcom/wsw/cospa/bean/SearchComicBean;

    invoke-static {v0, p1, p2}, Lcom/wsw/cospa/adapter/SearchComicAdapter;->for(Ljava/lang/String;Lcom/wsw/cospa/bean/SearchComicBean;Lcom/wsw/cospa/bean/SearchComicBean;)I

    move-result p1

    return p1
.end method
