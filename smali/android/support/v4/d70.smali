.class public final synthetic Landroid/support/v4/d70;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/Converter;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/model/impl/for;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/model/impl/for;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/d70;->do:Lcom/wsw/cospa/model/impl/for;

    return-void
.end method


# virtual methods
.method public final convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/d70;->do:Lcom/wsw/cospa/model/impl/for;

    check-cast p1, Lokhttp3/ResponseBody;

    invoke-static {v0, p1}, Lcom/wsw/cospa/model/impl/for;->do(Lcom/wsw/cospa/model/impl/for;Lokhttp3/ResponseBody;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
