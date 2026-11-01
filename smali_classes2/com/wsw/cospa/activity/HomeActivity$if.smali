.class Lcom/wsw/cospa/activity/HomeActivity$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flyco/tablayout/listener/CustomTabEntity;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/activity/HomeActivity;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Ljava/util/List;

.field public final synthetic for:Ljava/util/List;

.field public final synthetic if:I

.field public final synthetic new:Ljava/util/List;

.field public final synthetic try:Lcom/wsw/cospa/activity/HomeActivity;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/activity/HomeActivity;Ljava/util/List;ILjava/util/List;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/HomeActivity$if;->try:Lcom/wsw/cospa/activity/HomeActivity;

    iput-object p2, p0, Lcom/wsw/cospa/activity/HomeActivity$if;->do:Ljava/util/List;

    iput p3, p0, Lcom/wsw/cospa/activity/HomeActivity$if;->if:I

    iput-object p4, p0, Lcom/wsw/cospa/activity/HomeActivity$if;->for:Ljava/util/List;

    iput-object p5, p0, Lcom/wsw/cospa/activity/HomeActivity$if;->new:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTabSelectedIcon()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/HomeActivity$if;->for:Ljava/util/List;

    iget v1, p0, Lcom/wsw/cospa/activity/HomeActivity$if;->if:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getTabTitle()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/HomeActivity$if;->do:Ljava/util/List;

    iget v1, p0, Lcom/wsw/cospa/activity/HomeActivity$if;->if:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTabUnselectedIcon()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/HomeActivity$if;->new:Ljava/util/List;

    iget v1, p0, Lcom/wsw/cospa/activity/HomeActivity$if;->if:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method
