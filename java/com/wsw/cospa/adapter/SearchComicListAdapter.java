package com.wsw.cospa.adapter;

import android.app.Activity;
import android.content.Context;
import android.support.v4.tm1;
import android.support.v4.w;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.Unbinder;
import butterknife.internal.Cnew;
import com.wsw.cospa.R;
import com.wsw.cospa.adapter.SearchComicListAdapter;
import com.wsw.cospa.bean.SearchComicBean;
import com.wsw.cospa.dao.DatabaseHelper;
import com.wsw.cospa.listener.OnItemClickListener;
import com.wsw.cospa.utils.Ccase;
import com.wsw.cospa.utils.Cfinally;
import com.wsw.cospa.utils.analyzeUrl.AnalyzeHeaders;
import com.wsw.cospa.widget.view.MarqueTextView;
import com.wsw.cospa.widget.view.RoundImageView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public class SearchComicListAdapter extends RecyclerView.Adapter<ComicViewHolder> {

    /* renamed from: case, reason: not valid java name */
    private String f21838case;

    /* renamed from: do, reason: not valid java name */
    private OnItemClickListener f21839do;

    /* renamed from: for, reason: not valid java name */
    private LayoutInflater f21840for;

    /* renamed from: if, reason: not valid java name */
    private Context f21841if;

    /* renamed from: new, reason: not valid java name */
    private List<SearchComicBean> f21842new = new ArrayList();

    /* renamed from: try, reason: not valid java name */
    private int f21843try;

    public static class ComicViewHolder extends RecyclerView.ViewHolder {

        @BindView(R.id.arg_res_0x7f09023a)
        public RoundImageView ivCover;

        @BindView(R.id.arg_res_0x7f09046f)
        public MarqueTextView tvComicName;

        @BindView(R.id.arg_res_0x7f090494)
        public TextView tvLastChapter;

        @BindView(R.id.arg_res_0x7f0904a0)
        public TextView tvOrigin;

        @BindView(R.id.arg_res_0x7f0904aa)
        public TextView tvSearch;

        public ComicViewHolder(View view) throws NoSuchMethodException, SecurityException {
            super(view);
            ButterKnife.m10352case(this, view);
        }
    }

    public class ComicViewHolder_ViewBinding implements Unbinder {

        /* renamed from: do, reason: not valid java name */
        private ComicViewHolder f21844do;

        @UiThread
        public ComicViewHolder_ViewBinding(ComicViewHolder comicViewHolder, View view) {
            this.f21844do = comicViewHolder;
            comicViewHolder.ivCover = (RoundImageView) Cnew.m10373case(view, R.id.arg_res_0x7f09023a, "field 'ivCover'", RoundImageView.class);
            comicViewHolder.tvOrigin = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f0904a0, "field 'tvOrigin'", TextView.class);
            comicViewHolder.tvComicName = (MarqueTextView) Cnew.m10373case(view, R.id.arg_res_0x7f09046f, "field 'tvComicName'", MarqueTextView.class);
            comicViewHolder.tvLastChapter = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f090494, "field 'tvLastChapter'", TextView.class);
            comicViewHolder.tvSearch = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f0904aa, "field 'tvSearch'", TextView.class);
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void unbind() {
            ComicViewHolder comicViewHolder = this.f21844do;
            if (comicViewHolder == null) {
                throw new IllegalStateException("Bindings already cleared.");
            }
            this.f21844do = null;
            comicViewHolder.ivCover = null;
            comicViewHolder.tvOrigin = null;
            comicViewHolder.tvComicName = null;
            comicViewHolder.tvLastChapter = null;
            comicViewHolder.tvSearch = null;
        }
    }

    /* renamed from: com.wsw.cospa.adapter.SearchComicListAdapter$do, reason: invalid class name */
    public class Cdo implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ List f21845do;

        public Cdo(List list) {
            this.f21845do = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            DatabaseHelper.m26016switch().m26035private(this.f21845do);
        }
    }

    public SearchComicListAdapter(Context context) {
        this.f21841if = context;
        this.f21840for = (LayoutInflater) context.getSystemService("layout_inflater");
        this.f21843try = this.f21841if.getResources().getColor(R.color.arg_res_0x7f06008d);
    }

    /* renamed from: catch, reason: not valid java name */
    private static int m25835catch(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        StringBuilder sb2 = new StringBuilder();
        int iMin = Math.min(str.length(), str2.length());
        int i = 0;
        int i2 = 0;
        while (i < iMin && i2 < iMin) {
            sb.setLength(0);
            sb2.setLength(0);
            if (str.charAt(i) <= '9' && str.charAt(i) >= '0' && str2.charAt(i2) <= '9' && str2.charAt(i2) >= '0') {
                while (i < str.length() && str.charAt(i) <= '9' && str.charAt(i) >= '0') {
                    sb.append(str.charAt(i));
                    i++;
                }
                while (i2 < str2.length() && str2.charAt(i2) <= '9' && str2.charAt(i2) >= '0') {
                    sb2.append(str2.charAt(i2));
                    i2++;
                }
                int iM25844try = m25844try(sb.toString());
                int iM25844try2 = m25844try(sb2.toString());
                if (iM25844try != iM25844try2) {
                    return iM25844try > iM25844try2 ? 1 : -1;
                }
                if (sb.length() < sb2.length()) {
                    return 1;
                }
                if (sb.length() > sb2.length()) {
                    return -1;
                }
            } else {
                if (str.charAt(i) != str2.charAt(i2)) {
                    return str.charAt(i) > str2.charAt(i2) ? 1 : -1;
                }
                i++;
                i2++;
            }
        }
        return str.length() > str2.length() ? 1 : -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: else, reason: not valid java name */
    public static /* synthetic */ int m25837else(String str, SearchComicBean searchComicBean, SearchComicBean searchComicBean2) {
        if ((TextUtils.equals(str, searchComicBean.getName()) || TextUtils.equals(str, searchComicBean.getAuthor())) && searchComicBean.getOriginNum() > searchComicBean2.getOriginNum()) {
            return -1;
        }
        if ((TextUtils.equals(str, searchComicBean2.getName()) || TextUtils.equals(str, searchComicBean2.getAuthor())) && searchComicBean.getOriginNum() < searchComicBean2.getOriginNum()) {
            return 1;
        }
        if (searchComicBean.getName().contains(str) || searchComicBean.getAuthor().contains(str)) {
            return -1;
        }
        return (searchComicBean2.getName().contains(str) || searchComicBean2.getAuthor().contains(str)) ? 1 : 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: goto, reason: not valid java name */
    public /* synthetic */ void m25839goto(int i, View view) {
        OnItemClickListener onItemClickListener = this.f21839do;
        if (onItemClickListener != null) {
            onItemClickListener.onItemClick(i);
        }
    }

    /* renamed from: super, reason: not valid java name */
    private synchronized void m25841super(List<SearchComicBean> list) {
        Ccase.m26722this().m26725else().execute(new Cdo(list));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: this, reason: not valid java name */
    public static /* synthetic */ int m25842this(String str, SearchComicBean searchComicBean, SearchComicBean searchComicBean2) {
        if (TextUtils.equals(str, searchComicBean.getName()) || TextUtils.equals(str, searchComicBean.getAuthor())) {
            return -1;
        }
        if (TextUtils.equals(str, searchComicBean2.getName()) || TextUtils.equals(str, searchComicBean2.getAuthor())) {
            return 1;
        }
        if (searchComicBean.getName().contains(str) || searchComicBean.getAuthor().contains(str)) {
            return -1;
        }
        return (searchComicBean2.getName().contains(str) || searchComicBean2.getAuthor().contains(str)) ? 1 : 0;
    }

    /* renamed from: throw, reason: not valid java name */
    private synchronized void m25843throw(List<SearchComicBean> list, final String str) {
        try {
            Collections.sort(list, new Comparator() { // from class: android.support.v4.dt1
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return SearchComicListAdapter.m25842this(str, (SearchComicBean) obj, (SearchComicBean) obj2);
                }
            });
        } catch (Exception unused) {
        }
    }

    /* JADX WARN: Path cross not found for [B:14:0x0025, B:23:0x0048], limit reached: 32 */
    /* JADX WARN: Removed duplicated region for block: B:26:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x005e  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x003d -> B:23:0x0048). Please report as a decompilation issue!!! */
    /* renamed from: try, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static int m25844try(String str) {
        double d;
        char cCharAt;
        int i = 0;
        if (str == null || str.length() == 0) {
            return 0;
        }
        int length = str.length();
        double d2 = 0.0d;
        while (str.charAt(i) == ' ') {
            i++;
        }
        int i2 = 1;
        if (str.charAt(i) != '+') {
            if (str.charAt(i) == '-') {
                i2 = -1;
            } else {
                if (i < length || (cCharAt = str.charAt(i)) < '0' || cCharAt > '9') {
                    double d3 = i2;
                    Double.isNaN(d3);
                    d = d2 * d3;
                    if (d <= 2.147483647E9d) {
                        d = 2.147483647E9d;
                    } else if (d < -2.147483648E9d) {
                        d = -2.147483648E9d;
                    }
                    return (int) d;
                }
                double d4 = cCharAt - '0';
                Double.isNaN(d4);
                d2 = (d2 * 10.0d) + d4;
            }
        }
        i++;
        if (i < length) {
        }
        double d32 = i2;
        Double.isNaN(d32);
        d = d2 * d32;
        if (d <= 2.147483647E9d) {
        }
        return (int) d;
    }

    /* renamed from: break, reason: not valid java name */
    public SpannableString m25845break(int i, String str, String str2) {
        int iIndexOf;
        SpannableString spannableString = new SpannableString(str);
        if (!TextUtils.isEmpty(str2) && (iIndexOf = str.indexOf(str2)) >= 0) {
            int length = str2.length() + iIndexOf;
            if (length > str.length()) {
                length = str.length();
            }
            spannableString.setSpan(new ForegroundColorSpan(i), iIndexOf, length, 33);
        }
        return spannableString;
    }

    /* renamed from: case, reason: not valid java name */
    public synchronized SearchComicBean m25846case(int i) {
        return this.f21842new.get(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: class, reason: not valid java name and merged with bridge method [inline-methods] */
    public void onBindViewHolder(@NonNull ComicViewHolder comicViewHolder, final int i) {
        SearchComicBean searchComicBean = this.f21842new.get(i);
        Object tag = comicViewHolder.ivCover.getTag(R.id.arg_res_0x7f090391);
        if (tag == null || !tag.equals(searchComicBean.getCoverUrl())) {
            comicViewHolder.ivCover.setTag(R.id.arg_res_0x7f090391, null);
            if (!TextUtils.isEmpty(searchComicBean.getCoverUrl())) {
                Cfinally.m26887class(this.f21841if, searchComicBean.getCoverUrl(), comicViewHolder.ivCover, searchComicBean.getCoverHeader(), AnalyzeHeaders.getDefaultUserAgent(com.wsw.cospa.model.Cdo.m26358abstract(searchComicBean.getTag())));
            }
            comicViewHolder.ivCover.setTag(R.id.arg_res_0x7f090391, searchComicBean.getCoverUrl());
        }
        comicViewHolder.tvComicName.setText(m25845break(this.f21843try, searchComicBean.getName() + "(共" + searchComicBean.getOriginNum() + "个源)", this.f21838case));
        if (TextUtils.isEmpty(searchComicBean.getAuthor())) {
            comicViewHolder.tvOrigin.setText("暂无");
        } else {
            comicViewHolder.tvOrigin.setText(searchComicBean.getAuthor());
        }
        if (TextUtils.isEmpty(searchComicBean.getLastChapter())) {
            comicViewHolder.tvLastChapter.setText(searchComicBean.getOrigin());
        } else {
            comicViewHolder.tvLastChapter.setVisibility(0);
            if (searchComicBean.getLastChapter().contains("话") || searchComicBean.getLastChapter().contains("-") || searchComicBean.getLastChapter().contains("上") || searchComicBean.getLastChapter().contains("下") || searchComicBean.getLastChapter().contains("卷") || searchComicBean.getLastChapter().contains("章") || searchComicBean.getLastChapter().contains("局")) {
                comicViewHolder.tvLastChapter.setText("更新至" + searchComicBean.getLastChapter());
            } else if (searchComicBean.getLastChapter().contains("连载中") || searchComicBean.getLastChapter().contains("已完结") || searchComicBean.getLastChapter().contains("更") || searchComicBean.getLastChapter().contains("更新至")) {
                comicViewHolder.tvLastChapter.setText(searchComicBean.getLastChapter());
            } else if (tm1.m7998case(searchComicBean.getLastChapter())) {
                comicViewHolder.tvLastChapter.setText("更新至" + searchComicBean.getLastChapter());
            } else {
                comicViewHolder.tvLastChapter.setText("更新至" + searchComicBean.getLastChapter());
            }
        }
        comicViewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.bt1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f533do.m25839goto(i, view);
            }
        });
        comicViewHolder.tvSearch.setVisibility(8);
    }

    public synchronized void clearList() {
        this.f21842new.clear();
        notifyDataSetChanged();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    /* renamed from: const, reason: not valid java name and merged with bridge method [inline-methods] */
    public ComicViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i) {
        return new ComicViewHolder(this.f21840for.inflate(R.layout.arg_res_0x7f0c009d, viewGroup, false));
    }

    /* renamed from: final, reason: not valid java name */
    public synchronized void m25849final(String str, List<SearchComicBean> list) {
        this.f21838case = str;
        int size = this.f21842new.size();
        this.f21842new.clear();
        notifyItemRangeRemoved(0, size);
        m25841super(list);
        this.f21842new.addAll(list);
        notifyDataSetChanged();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        List<SearchComicBean> list = this.f21842new;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        return i;
    }

    public synchronized List<SearchComicBean> getList() {
        return this.f21842new;
    }

    /* renamed from: new, reason: not valid java name */
    public synchronized void m25850new(List<SearchComicBean> list, final String str) {
        this.f21838case = str;
        ArrayList arrayList = new ArrayList(this.f21842new);
        if (list != null && list.size() > 0) {
            m25841super(list);
            ArrayList<SearchComicBean> arrayList2 = new ArrayList();
            if (arrayList.size() == 0) {
                arrayList.addAll(list);
                m25843throw(arrayList, str);
            } else {
                Iterator<SearchComicBean> it = list.iterator();
                while (true) {
                    int i = 0;
                    if (!it.hasNext()) {
                        break;
                    }
                    SearchComicBean next = it.next();
                    Boolean bool = Boolean.FALSE;
                    int size = arrayList.size();
                    while (true) {
                        if (i >= size) {
                            break;
                        }
                        SearchComicBean searchComicBean = arrayList.get(i);
                        if (TextUtils.equals(next.getName(), searchComicBean.getName()) && TextUtils.equals(next.getAuthor(), searchComicBean.getAuthor())) {
                            bool = Boolean.TRUE;
                            searchComicBean.addOriginUrl(next.getTag());
                            break;
                        }
                        i++;
                    }
                    if (!bool.booleanValue()) {
                        arrayList2.add(next);
                    }
                }
                for (SearchComicBean searchComicBean2 : arrayList2) {
                    if (TextUtils.equals(str, searchComicBean2.getName())) {
                        int i2 = 0;
                        while (true) {
                            if (i2 >= arrayList.size()) {
                                break;
                            }
                            if (!TextUtils.equals(str, arrayList.get(i2).getName())) {
                                arrayList.add(i2, searchComicBean2);
                                break;
                            }
                            i2++;
                        }
                    } else if (TextUtils.equals(str, searchComicBean2.getAuthor())) {
                        int i3 = 0;
                        while (true) {
                            if (i3 < arrayList.size()) {
                                SearchComicBean searchComicBean3 = arrayList.get(i3);
                                if (!TextUtils.equals(str, searchComicBean3.getName()) && !TextUtils.equals(str, searchComicBean3.getAuthor())) {
                                    arrayList.add(i3, searchComicBean2);
                                    break;
                                }
                                i3++;
                            }
                        }
                    } else if (searchComicBean2.getName().contains(str) || searchComicBean2.getAuthor().contains(str)) {
                        int i4 = 0;
                        while (true) {
                            if (i4 < arrayList.size()) {
                                SearchComicBean searchComicBean4 = arrayList.get(i4);
                                if (!TextUtils.equals(str, searchComicBean4.getName()) && !TextUtils.equals(str, searchComicBean4.getAuthor())) {
                                    arrayList.add(i4, searchComicBean2);
                                    break;
                                }
                                i4++;
                            }
                        }
                    } else {
                        arrayList.add(searchComicBean2);
                    }
                }
            }
            Activity activityM9009if = w.m9009if(this.f21841if);
            if (activityM9009if != null) {
                this.f21842new = arrayList;
                Collections.sort(arrayList, new Comparator() { // from class: android.support.v4.et1
                    @Override // java.util.Comparator
                    public final int compare(Object obj, Object obj2) {
                        return SearchComicListAdapter.m25837else(str, (SearchComicBean) obj, (SearchComicBean) obj2);
                    }
                });
                activityM9009if.runOnUiThread(new Runnable() { // from class: android.support.v4.ct1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f862do.notifyDataSetChanged();
                    }
                });
            }
        }
    }

    public void setOnItemClickListener(OnItemClickListener onItemClickListener) {
        this.f21839do = onItemClickListener;
    }
}
